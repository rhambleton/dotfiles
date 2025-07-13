{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    htop
    neovim
    chezmoi
    starship
    zoxide
    fzf
    tmux
    cargo
  ];

  home.stateVersion = "25.11";
}
