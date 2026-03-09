{ ... }:
{
  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" ];

    userSettings.autosave.after_delay.milliseconds = 0;

    userKeymaps = [
      {
        context = "Workspace";
        bindings = {
          "ctrl-q" = null;
        };
      }
      {
        context = "Editor";
        bindings = {
          "ctrl-q" = "editor::DeleteLine";
        };
      }
    ];
  };
}
