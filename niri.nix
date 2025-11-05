{ config, pkgs, ... }:

{

  environment.sessionVariables = {
    NIXOS_OZONE_WL = 1;
  };

  programs.niri = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    waybar
    mako
    rofi-wayland
    swaybg
    blueman
    swayidle
    swaylock
  ];

  fonts.packages = with pkgs; [
    roboto
    font-awesome
    nerd-fonts.jetbrains-mono
  ];
}
