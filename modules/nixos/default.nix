{ ... }:

{
  imports = [
    ./boot.nix
    ./networking.nix
    ./bluetooth.nix
    ./locale.nix
    ./desktop.nix
    ./printing.nix
    ./audio.nix
    ./users.nix
    ./packages.nix
    ./nix.nix
    ./sops.nix
    ./openvpn.nix
    ./hysteria.nix
  ];
}
