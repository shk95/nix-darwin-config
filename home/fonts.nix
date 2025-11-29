{pkgs, ...}: {
  home.packages = with pkgs; [
    nerd-fonts.d2coding
  ];

  fonts.fontconfig = {
    enable = true;
  };
}
