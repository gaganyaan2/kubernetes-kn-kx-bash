# kubernetes-kn-kx-bash
Simple kubernetes context and namespace switch using shell/bash script

### Install kn and kx:

```bash
curl -s https://raw.githubusercontent.com/koolwithk/kubernetes-kn-kx-bash/main/install.sh | sudo bash
```

### Run:
```bash
kn                 #show current namespace
kx                 #show current context

kn <namespace>     #switch to other namespace
kx <context>       #switch to other context
```

## Why kx and kn in bash?
- Simple bash script file with 2KB in size.

## Prerequisites:
- kubectl

## Refrences:
- https://kubernetes.io/docs/reference/kubectl/cheatsheet/
- https://github.com/ahmetb/kubectx