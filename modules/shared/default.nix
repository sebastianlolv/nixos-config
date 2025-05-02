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