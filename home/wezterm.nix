{lib, ...}: let
  toLua = lib.generators.toLua {};

  colors = {
    background = "#0d1117";
    gray = "#6e7681";
    ansi = {
      black = "#484f58";
      white = "#b1bac4";
      red = "#ff7b72";
      green = "#3fb950";
      yellow = "#d29922";
      blue = "#58a6ff";
      magenta = "#bc8cff";
      cyan = "#39c5cf";
    };
    brights = {
      black = "#6e7681";
      white = "#ffffff";
      red = "#ffa198";
      green = "#56d364";
      yellow = "#e3b341";
      blue = "#79c0ff";
      magenta = "#d2a8ff";
      cyan = "#56d4dd";
    };
  };

  fontList = [
    {family = "JetBrains Mono Nerd Font";} # free nerd font from nixpkgs
    {
      family = "Apple Color Emoji"; # for emojis
      assume_emoji_presentation = true;
    }
  ];
in {
  programs.wezterm = {
    enable = true;

    extraConfig = ''
      return ${
        toLua {
          automatically_reload_config = true;
          color_scheme = "default";
          font = lib.generators.mkLuaInline ''
            wezterm.font_with_fallback(${toLua fontList})
          '';
          font_size = 16;
          front_end = "WebGpu";
          hide_tab_bar_if_only_one_tab = false;
          keys = [
            {
              key = "Enter";
              mods = "SHIFT";
              action = lib.generators.mkLuaInline "wezterm.action.SendString '\\n'";
            }
          ];
          window_decorations = "RESIZE";
        }
      };
    '';

    colorSchemes = {
      default = {
        foreground = colors.ansi.white;
        background = colors.background;

        cursor_bg = colors.ansi.white;
        cursor_fg = colors.ansi.black;
        cursor_border = colors.ansi.white;

        selection_fg = "none";
        selection_bg = "rgba(255, 255, 255, 5%)";

        # scrollbar_thumb = "";

        # split = "";

        ansi = [
          colors.ansi.black
          colors.ansi.red
          colors.ansi.green
          colors.ansi.yellow
          colors.ansi.blue
          colors.ansi.magenta
          colors.ansi.cyan
          colors.ansi.white
        ];
        brights = [
          colors.brights.black
          colors.brights.red
          colors.brights.green
          colors.brights.yellow
          colors.brights.blue
          colors.brights.magenta
          colors.brights.cyan
          colors.brights.white
        ];
        compose_cursor = colors.ansi.green;
      };
    };

    enableZshIntegration = true;
  };
}
