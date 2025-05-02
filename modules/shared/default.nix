{ config, pkgs, ... }:

{

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowBroken = true;
      allowInsecure = false;
      allowUnsupportedSystem = true;
    };
  };

  nix.settings = {
  # enable flakes globally
  experimental-features = ["nix-command" "flakes"];
  }

  # restart services on change
  systemd.user.startServices = "sd-switch";
}
