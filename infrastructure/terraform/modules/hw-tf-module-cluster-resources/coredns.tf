/*
  CoreDNS is an extensible DNS server maintained by the CNCF and comes with Kubernetes.
  We use it for public -> internal DNS rewriting.

  cf. https://coredns.io/
*/

//
// Variables
//

variable "coredns_config_map_name" {
  type = string
  description = "The metadata.name for the CoreDNS configmap"
  default = "coredns"
}

//
// Update Corefile
//

resource "kubectl_manifest" "coredns_config_map" {
  yaml_body = <<YAML
apiVersion: v1
kind: ConfigMap
metadata:
  name: ${var.coredns_config_map_name}
  namespace: kube-system
data:
  Corefile: |
    .:53 {
        errors
        health {
           lameduck 5s
        }
        ready

        # our changes to the default Corefile:

        # end of changes

        kubernetes cluster.local in-addr.arpa ip6.arpa {
           pods insecure
           fallthrough in-addr.arpa ip6.arpa
           ttl 30
        }
        prometheus :9153
        forward . /etc/resolv.conf {
           max_concurrent 1000
        }
        cache 30
        loop
        reload
        loadbalance
    }
YAML
}

/*
  In case CoreDNS does not load a new config fast enough, you can manually trigger a reload by
  sending a SIGUSR1 signal to the process:
  $ kubectl exec -n kube-system coredns-bunchof-numbers -- kill -SIGUSR1 1
*/
