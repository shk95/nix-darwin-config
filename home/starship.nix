{...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[✗](bold red)";
      };

      git_branch = {
        symbol = "🌿 ";
        style = "bold purple";
      };
      git_state = {
        style = "yellow";
      };
      git_status = {
        style = "bold red";
        ahead = "⇡";
        behind = "⇣";
        diverged = "⇕";
        untracked = "?";
        modified = "!";
        staged = "+";
        deleted = "✘";
        renamed = "»";
        conflicted = "=";
        stashed = "$";
      };

      directory = {
        truncate_to_repo = true; # Git repo root 기준
        style = "bold blue";
      };

      docker_context = {
        symbol = "🐳 ";
        style = "blue";
      };
      kubernetes = {
        symbol = "☸️ ";
        style = "cyan";
      };
      aws = {
        symbol = "🅰 ";
        style = "bold yellow";
      };
      gcloud = {
        symbol = "🅶 ";
        format = "on [$symbol$active(\($region\))]($style) ";
        style = "bold cyan";
      };

      time = {
        format = "[$hour:$minute]($style) ";
        style = "bold white";
      };

      battery = {
        full_symbol = "🔋";
        charging_symbol = "⚡";
        discharging_symbol = "💀";
        unknown_symbol = "?";
        empty_symbol = "󰂎";

        display = [
          {
            threshold = 10;
            style = "bold red";
            charging_symbol = "⚡";
            discharging_symbol = "💀";
          }
          {
            threshold = 30;
            style = "bold yellow";
          }
          {
            threshold = 100;
            style = "bold green";
          }
        ];
      };

      cmd_duration = {
        show_milliseconds = false;
        style = "bold magenta";
      };
    };
  };
}
