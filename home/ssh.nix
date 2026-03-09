{ lib, osConfig, ... }:
let
  server = osConfig.sops.placeholder.server;
  alias = builtins.head (lib.splitString "." server);
in
{
  xdg.configFile."environment.d/10-ssh-agent.conf".text = ''
    SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent
  '';

  services.ssh-agent.enable = true;

  programs.ssh = {
    enable = true;
    matchBlocks."${alias}" = {
      hostname = server;
      user = "root";
    };
  };
}
