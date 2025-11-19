{
  lib,
  user,
  ...
}: {
  # `programs.git` will generate the config file: ~/.config/git/config
  # to make git use this config file, `~/.gitconfig` should not exist!
  #
  # https://git-scm.com/docs/git-config#Documentation/git-config.txt---global
  home.activation.removeExistingGitconfig = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
    rm -f ~/.gitconfig
  '';

  programs={
    git={
      enable = true;
      lfs.enable = false;
    
      # includes = [
      #   {
      #     # use diffrent email & name for work
      #     path = "~/work/.gitconfig";
      #     condition = "gitdir:~/work/";
      #   }
      # ];

      # signing = {
      #   key = "xxx";
      #   signByDefault = true;
      # };

      settings={
        user={
          name = user;
          email = "101378576+shk95@users.noreply.github.com";
        };
        
        alias = {
          # common aliases
          br = "branch";
          co = "checkout";
          st = "status";
          ls = "log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate";
          ll = "log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate --numstat";
          cm = "commit -m";
          ca = "commit -am";
          dc = "diff --cached";
          amend = "commit --amend -m";

          # aliases for submodule
          update = "submodule update --init --recursive";
          foreach = "submodule foreach";
        };

        init.defaultBranch = "master";
        push.autoSetupRemote = true;
        pull.rebase = true;
      };
    };

    delta = {
      enable = true;
      enableGitIntegration = true;
      options = {
        features = "side-by-side";
      };
    };
  };
}
