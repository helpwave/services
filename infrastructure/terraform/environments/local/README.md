# iac-environments-local

Apply the cluster-resources module to your local development cluster

### Port-Forward the APISIX Dashboard or Gateway

#### Dashboard
*Username/Password: admin/admin*
> kubectl port-forward service/apisix-dashboard 1337:http

#### Gateway
> kubectl port-forward service/apisix-gateway 8080:apisix-gateway
