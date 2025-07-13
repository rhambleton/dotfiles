{pkgs, ...}: {
  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  system.primaryUser = "flees";

  environment.systemPackages = with pkgs; [
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  networking.hostName = "yeetmac";

  # Mac specific apps and gui apps get loaded up here
  homebrew = {
    enable = true;
    casks = [
      "1password"
      "alacritty"
      "nikitabobko/tap/aerospace"
      "google-chrome"
    ];
  };
  users.users.flees = {
    name = "flees";
    home = "/Users/flees";
  };

  # system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6;
  nixpkgs.hostPlatform = "aarch64-darwin";
}
