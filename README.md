# Matrix-Cuda

Forked from https://github.com/lzhengchun/matrix-cuda.

# GKE Time Sharing

https://www.notion.so/justin0u0/GKE-GPU-Time-Sharing-7ba904b3cf9848d9896645f9da4651c0

# Experiments

Change the `command` in the [job.yaml](./manifests/job.yaml) the apply the manifest.

```bash
kubectl apply -f ./manifests/job.yaml

# optional
kubectl apply -f ./manifests/cuda.yaml # can execute `nvidia-smi` in the pod

# optional
kubectl apply -f ./manifests/devicequery.yaml # can execute `deviceQuery` in the pod
```
