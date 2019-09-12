# Learn nginx ingress on kubernetes

## Prerequisites

- Minikube

## Command for kubernetes with ingress

```bash
kubectl get ingress
kubectl logs -n kube-system nginx-ingress-controller-{random-gen} -f
kubectl get pods -n kube-system
kubectl exec -it -n kube-systemnginx-ingress-controller-{random-gen} sh
```

## Testing by curl

```bash
curl -X GET https://192.168.99.100/echo -k
```

## Change to http

```yaml
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
    nginx.ingress.kubernetes.io/force-ssl-redirect: "false"
```

Add these both line on annotation part of ingress

