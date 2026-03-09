{ ... }:
{
  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" ];

    userSettings.autosave.after_delay.milliseconds = 0;
    userSettings.buffer_font_size = 13.5;
    userSettings.buffer_line_height = "standard";
    userSettings.buffer_font_family = "FiraCode Nerd Font";

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
