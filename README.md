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

### Why kx and kn in bash?
- Size is less than 10KB
- Simple and Easy to install

### Limitation:

- Slower than kubectx/kubens as it's calls shell sed, awk, grep, kubectl in background.

### Prerequisites:
- kubectl

### Refrences:
- https://kubernetes.io/docs/reference/kubectl/cheatsheet/
- https://github.com/ahmetb/kubectx