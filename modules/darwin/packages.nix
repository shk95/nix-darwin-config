{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      zsh-completions
    ];
  };
}
