{
    config,
    pkgs,
    myvars,
    nuenv,
    ...
} @ args: {
    environment.variables.EDITOR = "nvmim --clean";

    environment.systemPackages = with pkgs; [
        # Core Tools
        neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        git

        # Text Processing
        gnugrep
        gnused
        jq

        # Networking Tools
        curl
        wget
        nmap
        dnsutils 
    ]
}