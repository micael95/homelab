kubectl create secret generic cloudflare-api-key \
  --from-literal=api-key=<YOUR_API_KEY> \
  --from-literal=email=<YOUR_EMAIL> \
  --namespace cert-manager

kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.12.16/cert-manager.yaml
kubectl apply -f middleware
kubectl apply -f cluster-issuer.yaml -n cert-manager