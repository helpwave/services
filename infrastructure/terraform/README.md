# terraform

This is the central place for our infrastructure.
Applying the approach known as _infrastructure-as-code_ we manage our infra using [terraform](https://www.terraform.io/) files.

The basis for this is the `hw-tf-module-cluster-resources` module.
Specific environments are available in `environments`.

To deploy a local version run `terraform apply` from `environments/local` against a local kubernetes cluster.
You may start one using [kind](https://kind.sigs.k8s.io/).

Also see `../charts`.
