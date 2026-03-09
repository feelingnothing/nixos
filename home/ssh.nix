{ lib, config, ... }:
let
  alias = builtins.head (lib.splitString "." config.sops.placeholder.server);
in
{
  services.ssh-agent.enable = true;

  programs.ssh = {
    enable = true;
    matchBlocks."${alias}" = {
      hostname = config.sops.placeholder.server;
      user = "root";
    };
  };
}
