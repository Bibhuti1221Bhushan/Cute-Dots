{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    enableExtensionUpdateCheck = true;
    enableUpdateCheck = false;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      vscode-extensions.github.github-vscode-theme

#      formulahendry.auto-close-tag
      christian-kohler.path-intellisense
      naumovs.color-highlight
#      usernamehw.errorlens
#      eamodio.gitlens

#      esbenp.prettier-vscode
#      kamadorueda.alejandra
#      astro-build.astro-vscode
#      bradlc.vscode-tailwindcss
    ];
    # ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    #   {
    #     name = "catppuccin-perfect-icons";
    #     publisher = "thang-nm";
    #     version = "0.21.31";
    #     sha256 = "sha256-ax2n0YyO7q4LkrPBbik2P+s/s3tZZick91kvZsfWsVc=";
    #   }
    #   {
    #     name = "tsuki";
    #     publisher = "re1san";
    #     version = "0.6.0";
    #     sha256 = "sha256-AP3RnO3v0OfO3d3bHRy5sjHEjwLGUxI/sEdLtGOxE2c=";
    #   }
    #   {
    #     name = "copilot-chat";
    #     publisher = "GitHub";
    #     version = "0.13.2024020701";
    #     sha256 = "sha256-srhMLmLil6qgeAxJRMKz+MmqVJeX8N5f7WYN+CrV9B0=";
    #   }
    #   {
    #     name = "unocss";
    #     publisher = "antfu";
    #     version = "0.58.5";
    #     sha256 = "sha256-diwvMl88Nfq3QPm6AygiQpoFm82hSelpnU5KCOSU0pE=";
    #   }
    # ];
    userSettings = {
      # "workbench.iconTheme" = "catppuccin-perfect-mocha";
      # "workbench.colorTheme" = "Tsuki";
      # "editor.fontFamily" = "Maple Mono SC NF, Catppuccin Perfect Mocha, 'monospace', monospace";
      "editor.fontSize" = 12;
      "editor.fontLigatures" = true;
      "files.trimTrailingWhitespace" = true;
      # "terminal.integrated.fontFamily" = "Maple Mono SC NF";
      "window.titleBarStyle" = "custom";
      "window.customTitleBarVisibility" = "false";
      # "terminal.integrated.defaultProfile.linux" = "zsh";
      # "terminal.integrated.cursorBlinking" = true;
      # "terminal.integrated.enableBell" = false;
      # "editor.formatOnPaste" = true;
      # "editor.formatOnSave" = true;
      # "editor.formatOnType" = false;
      # "editor.minimap.enabled" = false;
      # "editor.minimap.renderCharacters" = false;
      # "editor.overviewRulerBorder" = false;
      # "editor.renderLineHighlight" = "all";
      # "editor.inlineSuggest.enabled" = true;
      # "editor.smoothScrolling" = true;
      # "editor.suggestSelection" = "first";
      # "editor.guides.indentation" = true;
      # "editor.guides.bracketPairs" = true;
      # "editor.bracketPairColorization.enabled" = true;
      # "window.restoreWindows" = "all";
      # "window.menuBarVisibility" = "classic";
      # "workbench.panel.defaultLocation" = "right";
      # "workbench.list.smoothScrolling" = true;
      # "security.workspace.trust.enabled" = false;
      # "explorer.confirmDelete" = false;
      # "breadcrumbs.enabled" = true;
      # "telemetry.telemetryLevel" = "off";
      # "workbench.startupEditor" = "newUntitledFile";
      # "editor.cursorBlinking" = "expand";
      # "security.workspace.trust.untrustedFiles" = "open";
      # "security.workspace.trust.banner" = "never";
      # "security.workspace.trust.startupPrompt" = "never";
      # # "workbench.sideBar.location" = "right";
      # "editor.tabSize" = 2;
      # "editor.wordWrap" = "on";
      # # "workbench.editor.tabActionLocation" = "left";
      # "[typescriptreact]" = {
      #   "editor.defaultFormatter" = "esbenp.prettier-vscode";
      # };
    };
  };
}
