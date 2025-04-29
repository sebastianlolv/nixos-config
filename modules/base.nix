{
    config,
    pkgs,
    myvars,
    nuenv,
    ...
} @ args: {
    # for security reasons, do not load neovim's user config
    # since EDITOR may be used to edit some critical files
    environment.variables.EDITOR = "nvmim --clean";

    environment.systemPackages = with pkgs; [
        # Core Tools
        neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        git

        # Text Processing
        gnugrep
        gnused
        gawk
        jq

        # Networking Tools
        curl
        wget
        nmap
        dnsutils
    ]

    nix.settings = {
    # enable flakes globally
    experimental-features = ["nix-command" "flakes"];
    }
}