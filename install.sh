function prerequisites() {
    mkdir -p /usr/local/bin

    #check if kubectl installed
    if ! [ -x "$(command -v kubectl)" ]; then
      echo 'Error: kubectl is not installed.' >&2
      exit 1
    fi
}

function install() {
  curl -s https://raw.githubusercontent.com/koolwithk/kubernetes-kn-kx-bash/main/kn.sh -o /usr/local/bin/kn
  curl -s https://raw.githubusercontent.com/koolwithk/kubernetes-kn-kx-bash/main/kx.sh -o /usr/local/bin/kx
  chmod +x /usr/local/bin/kn /usr/local/bin/kx
  echo "Installed kn and kx at /usr/local/bin/kn /usr/local/bin/kx"
}

#call function
prerequisites
install