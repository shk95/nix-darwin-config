{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      alacritty
      darwin.trash
      wezterm
      zsh-completions
    ];
  };
}
