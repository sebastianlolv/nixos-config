{ pkgs, ... }:

with pkgs; [
    # General packages for development and system management
    act
    btop
    bash-completion
    coreutils
    git
    gh
    openssh
    zip
    uv

    # Encryption and security tools
    _1password
    gnugrep
    gnused
    gnupg
    gawk

    # Cloud-related tools
    docker
    docker-compose
    github-cli
    go
    terraform
    terraform-ls
    kubernetes
    kubernetes-helm
    kubectl

    # Media-related pkgs
    ffmpeg

    # Text and terminal utilities
    btop
    neovim
    jq
    bash
    tree
    tmux

    # Networking tools
    wget
    curl
    socat
    nmap
]