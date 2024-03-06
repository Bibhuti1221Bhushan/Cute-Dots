{ config, pkgs, Var, ... }:

{
  imports = [
    ./home/gtk-qt.nix
    ./home/fonts.nix
    ./home/hyprland.nix
    ./home/kitty.nix
    # ./home/vscode.nix
  ];

  home.username = "${Var.username}";
  home.homeDirectory = "/home/${Var.username}";

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  home.file.".vscode-oss/extensions/codeium.codeium-1.6.39-universal/assets/codeium.svg" = {
    source = ./config/codeium.svg;
  };



}
