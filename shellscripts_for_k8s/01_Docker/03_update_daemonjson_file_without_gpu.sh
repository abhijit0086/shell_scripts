echo "updating /etc/docker/docker.json file as recommended by nvidia documentation"
cat <<EOF | sudo tee /etc/docker/daemon.json

{
    "exec-opts": ["native.cgroupdriver=systemd"],
    "log-driver": "json-file",
    "log-opts": {
      "max-size": "100m"
    },
    "storage-driver": "overlay2"
}

EOF