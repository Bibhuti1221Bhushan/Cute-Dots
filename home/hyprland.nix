{ config, lib, pkgs, ... }:

{

	home.packages = with pkgs; [
		swww
	];

	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;
		extraConfig = ''

#  ███████╗██╗  ██╗███████╗ ██████╗
#  ██╔════╝╚██╗██╔╝██╔════╝██╔════╝
#  █████╗   ╚███╔╝ █████╗  ██║
#  ██╔══╝   ██╔██╗ ██╔══╝  ██║
#  ███████╗██╔╝ ██╗███████╗╚██████╗
#  ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝

# exec-once = waybar                                                                              # --LAUNCH WAYBAR
# exec-once = redshift                                                                            # --LAUNCH REDSHIFT COLOR FILTER
# exec-once = nm-applet --indicator                                                               # --LAUNCH NETWORK MANAGER APPLET
# exec-once = blueberry-tray                                                                      # --LAUNCH BLUETOOTH MANAGER APPLET
# exec-once = /usr/lib/xfce-polkit/xfce-polkit                                                    # --LAUNCH XFCE POLKIT AUTHENTICATION AGENT
# exec-once = ~/.config/hypr/xdg-desktop                                                          # --LAUNCH XDG DESKTOP PORTAL HYPRLAND
# exec-once = ~/.config/scripts/change-bg                                                         # --SET RANDOM WALLPAPER ON EVERY BOOT
# exec-once = ~/.config/scripts/xauthority
# exec-once = wl-clipboard-history -t
# exec-once = wl-paste --type text --watch cliphist store                                         # --STORE TEXT IN CLIPBOARD
# exec-once = wl-paste --type image --watch cliphist store                                        # --STORE IMAGES IN CLIPBOARD
exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP    # --SET WAYLAND SYSTEMD ENVIRONMENT
exec-once = systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP             # --IMPORT WAYLAND ENVIRONMENT FOR USER
# exec-once = swayidle -w timeout 300 '~/.config/scripts/lockscreen' before-sleep "~/.config/scripts/lockscreen" &

#  ███████╗███╗   ██╗██╗   ██╗    ██╗   ██╗ █████╗ ██████╗
#  ██╔════╝████╗  ██║██║   ██║    ██║   ██║██╔══██╗██╔══██╗
#  █████╗  ██╔██╗ ██║██║   ██║    ██║   ██║███████║██████╔╝
#  ██╔══╝  ██║╚██╗██║╚██╗ ██╔╝    ╚██╗ ██╔╝██╔══██║██╔══██╗
#  ███████╗██║ ╚████║ ╚████╔╝      ╚████╔╝ ██║  ██║██║  ██║
#  ╚══════╝╚═╝  ╚═══╝  ╚═══╝        ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝

# hyprctl setcursor Breeze 24                                                                     # --SET DEFAULT CURSOR
# env = XCURSOR_SIZE,24                                                                           # --SET CURSOR SIZE
# env = GTK_THEME,Skeuos-Blue-Dark                                                                # -- SET GTK THEME
# env = GTK_ICONS,Adwaita
# env = MOZ_ENABLE_WAYLAND=1


#  ███╗   ███╗ ██████╗ ███╗   ██╗██╗████████╗ ██████╗ ██████╗
#  ████╗ ████║██╔═══██╗████╗  ██║██║╚══██╔══╝██╔═══██╗██╔══██╗
#  ██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║   ██║   ██║██████╔╝
#  ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║   ██║   ██║██╔══██╗
#  ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║   ╚██████╔╝██║  ██║
#  ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝

  monitor=,preferred,auto,auto           # --SET AUTO PREFERRED RESOLUTION
# monitor = DP-1,1366x768@60,0x0,1       # --SET CUSTOM DISPLAY & RESOLUTION 1366x768


#  ██╗███╗   ██╗██████╗ ██╗   ██╗████████╗
#  ██║████╗  ██║██╔══██╗██║   ██║╚══██╔══╝
#  ██║██╔██╗ ██║██████╔╝██║   ██║   ██║
#  ██║██║╚██╗██║██╔═══╝ ██║   ██║   ██║
#  ██║██║ ╚████║██║     ╚██████╔╝   ██║
#  ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝    ╚═╝

input {
  kb_layout = us                       # --SET KEYBOARD LAYOUT
  numlock_by_default = 1               # --TURN ON NUM LOCK
  follow_mouse = 0                     # --FOLLOW MOUSE FOCUS, 0 = DISABLE, 1 = ALWAYS FOLLOW, 2 = LIKE MS-WINDOWS , 3 = FOLLOW MOUSE BUT DON,T DEATACH KEYBOARD
  touchpad {
    natural_scroll = no                # --ENABLE NATURAL SCROLL
    disable_while_typing = true        # --DISABLE TOUCHPAD WHILE TYPING
  }
  sensitivity = 1.0                    # --[-1.0 - 1.0], 0 MEANS NO MODIFICATION
}

#   ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗
#  ██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║
#  ██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║
#  ██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║
#  ╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗
#   ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

general {
  gaps_in = 3                                               # --GAPS BETWEEN WINDOWS
  gaps_out = 10                                             # --GAPS BETWEEN WINDOWS AND MONITOR
  border_size = 3                                           # --BORDER SIZE OF WINDOWS
  no_border_on_floating = false                             # --BORDER OF FLOATING WINDOWS
  col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg   # --ACTIVE WINDOWS BORDER COLOR
  col.inactive_border = rgba(595959aa)                      # --INACTIVE WINDOWS BORDER COLOR
  layout = dwindle                                          # --LAYOUT OF TILLING = DWINDLE, MASTER
}

#  ███╗   ███╗██╗███████╗ ██████╗
#  ████╗ ████║██║██╔════╝██╔════╝
#  ██╔████╔██║██║███████╗██║
#  ██║╚██╔╝██║██║╚════██║██║
#  ██║ ╚═╝ ██║██║███████║╚██████╗
#  ╚═╝     ╚═╝╚═╝╚══════╝ ╚═════╝

misc {
  disable_hyprland_logo = true            # --DISABLE HYPRLAND BG LOGO
  disable_splash_rendering = true         # --DISABLE SPLASH RENDERING
  mouse_move_enables_dpms = true          # --WAKE UP THE MONITORS ON MOUSE MOVEMENT
  enable_swallow = true                   # --ENABLE WINDOW SWALLOWING
  swallow_regex = ^(kitty)$               # --TERMINAL WINDOW SHOULD BE SWALLOWED
  disable_autoreload = false              # --DISABLE HYPRLAND CONFIG AUTO RELOAD
}

#  ██████╗ ███████╗ ██████╗ ██████╗ ██████╗  █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
#  ██╔══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
#  ██║  ██║█████╗  ██║     ██║   ██║██████╔╝███████║   ██║   ██║██║   ██║██╔██╗ ██║
#  ██║  ██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
#  ██████╔╝███████╗╚██████╗╚██████╔╝██║  ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
#  ╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

decoration {
    drop_shadow = true
    shadow_range=100
    shadow_render_power=100
    col.shadow= 0x33000000
    col.shadow_inactive=0x22000000
    rounding=3
}

#  rounding = 5                    # --WINDOWS ROUNDED CORNER
#  multisample_edges = true        # --NO-JAGGIES ON ROUNDED CORNERS

  # █▀█   █▀█   ▄▀█   █▀▀   █   ▀█▀   █▄█
  # █▄█   █▀▀   █▀█   █▄▄   █    █     █

 # active_opacity = 1.0             # --OPACITY OF ACTIVE WINDOWS (0.0 - 1.0)
 # inactive_opacity = 1.0           # --OPACITY OF INACTIVE WINDOWS (0.0 - 1.0)
 # fullscreen_opacity = 1.0         # --OPACITY OF FULLSCREEN WINDOWS (0.0 - 1.0)
 # dim_inactive = false
 # dim_strength = 0.1
 # dim_around = 0.5

  # █▄▄   █     █ █   █▀█
  # █▄█   █▄▄   █▄█   █▀▄

#  blur = true                       # --ENABLE WINDOW BACKGROUND BLUR
#  blur_size = 8                     # --WINDOW BLUR SIZE
#  blur_passes = 3                   # --THE AMOUNT OF PASSES TO PERFORM
#  blur_new_optimizations = true     # --FURTHER OPTIMIZATIONS TO THE BLUR


  # █▀    █ █   ▄▀█   █▀▄   █▀█   █ █ █
  # ▄█    █▀█   █▀█   █▄▀   █▄█   ▀▄▀▄▀

#  drop_shadow = true                # --ENABLE DROP SHADOWS ON WINDOWS
#  shadow_ignore_window = true       # --IGNORE SHADOW BEHIND WINDOW
#  shadow_offset = 2               # --SHADOW RENDERING OFFSET
#  shadow_range = 4                  # --SHADOW RANGE SIZE IN LAYOUT
#  shadow_render_power = 2           # --SET HOW FAST SHADOW RENDERING FALL OFF
#  col.shadow = 0x66000000           # --SHADOW COLOR
  blurls = gtk-layer-shell          # --BLUR GTK-LAYER-SHELL
  blurls = lockscreen               # --BLUR LOCKSCREEN
}

#   █████╗ ███╗   ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
#  ██╔══██╗████╗  ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
#  ███████║██╔██╗ ██║██║██╔████╔██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
#  ██╔══██║██║╚██╗██║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
#  ██║  ██║██║ ╚████║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║     CHECK MORE
#  ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

animations {
  enabled = true
  bezier = overshot, 0.05, 0.9, 0.1, 1.05
  bezier = smoothOut, 0.36, 0, 0.66, -0.56
  bezier = smoothIn, 0.25, 1, 0.5, 1

  animation = windows, 1, 5, overshot, slide
  animation = windowsOut, 1, 4, smoothOut, slide
  animation = windowsMove, 1, 4, default
  animation = border, 1, 10, default
  animation = fade, 1, 10, smoothIn
  animation = fadeDim, 1, 10, smoothIn
  animation = workspaces, 1, 6, default
}

#  ██╗      █████╗ ██╗   ██╗ ██████╗ ██╗   ██╗████████╗
#  ██║     ██╔══██╗╚██╗ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝
#  ██║     ███████║ ╚████╔╝ ██║   ██║██║   ██║   ██║
#  ██║     ██╔══██║  ╚██╔╝  ██║   ██║██║   ██║   ██║
#  ███████╗██║  ██║   ██║   ╚██████╔╝╚██████╔╝   ██║
#  ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝    ╚═╝

dwindle {
  no_gaps_when_only = false
  pseudotile = true           # MASTER SWITCH FOR PSEUDOTILING. ENABLING IS BOUND TO SUPER + P IN THE KEYBINDS SECTION BELOW
  preserve_split = true
}

master {
  new_is_master = true
}

#  ██████╗ ██╗███╗   ██╗██████╗ ███████╗
#  ██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
#  ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
#  ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
#  ██████╔╝██║██║ ╚████║██████╔╝███████║
#  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝

binds {
  workspace_back_and_forth = true
  allow_workspace_cycles = true
}

#   ██████╗ ███████╗███████╗████████╗██╗   ██╗██████╗ ███████╗███████╗
#  ██╔════╝ ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗██╔════╝██╔════╝
#  ██║  ███╗█████╗  ███████╗   ██║   ██║   ██║██████╔╝█████╗  ███████╗
#  ██║   ██║██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  ╚════██║
#  ╚██████╔╝███████╗███████║   ██║   ╚██████╔╝██║  ██║███████╗███████║
#   ╚═════╝ ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝

gestures {
  workspace_swipe = off
  workspace_swipe_fingers = 3
  workspace_swipe_distance = 1000
}

#  ██████╗ ███████╗██╗   ██╗██╗ ██████╗███████╗███████╗
#  ██╔══██╗██╔════╝██║   ██║██║██╔════╝██╔════╝██╔════╝
#  ██║  ██║█████╗  ██║   ██║██║██║     █████╗  ███████╗
#  ██║  ██║██╔══╝  ╚██╗ ██╔╝██║██║     ██╔══╝  ╚════██║
#  ██████╔╝███████╗ ╚████╔╝ ██║╚██████╗███████╗███████║
#  ╚═════╝ ╚══════╝  ╚═══╝  ╚═╝ ╚═════╝╚══════╝╚══════╝

device:Synaptics s3203 {      # --TO FIND DEVICE NAME (CAT /PROC/BUS/INPUT/DEVICES | GREP -I DEVICENAME
    sensitivity = 0.31        # --SET TOUCHPAD SENSTIVITY
}

#  ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗    ██████╗ ██╗   ██╗██╗     ███████╗
#  ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║    ██╔══██╗██║   ██║██║     ██╔════╝
#  ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║    ██████╔╝██║   ██║██║     █████╗
#  ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║    ██╔══██╗██║   ██║██║     ██╔══╝
#  ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝    ██║  ██║╚██████╔╝███████╗███████╗        EDIT
#   ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝

# UNIVERSAL WINDOWS RULE
windowrule = float, file_progress
windowrule = float, confirm
windowrule = float, dialog
windowrule = float, download
windowrule = float, notification
windowrule = float, error
windowrule = float, splash
windowrule = float, confirmreset
windowrule = float, title:Open File
windowrule = float, title:Open Folder
windowrule = float, title:branchdialog

# GENERAL WINDOWS RULE
windowrule = float, title:nwg-look

windowrule = float, pavucontrol
windowrulev2 = size 550 475, class:^(pavucontrol)$
windowrulev2 = size 550 475, class:^(pavucontrol)$ title:^(Volume Control)$
windowrule = float, file-roller
windowrule = float, title:^(Media viewer)$
windowrule = float, title:^(Volume Control)$
windowrule = float, title:^(Picture-in-Picture)$
windowrule = size 800 600, title:^(Volume Control)$
windowrule = move 75 44%, title:^(Volume Control)$

windowrule = float, xfce-polkit
windowrule = dimaround, xfce-polkit

windowrule = float, title:lxappearance
windowrule = center, title:lxappearance

windowrule = float, Rofi
windowrule = forceinput, Rofi

windowrule = float, imv
windowrule = size 800 500, imv
windowrule = center, imv

windowrule = float, mpv
windowrule = size 800 500, mpv
windowrule = center, mpv

windowrule = float, title:gotop
windowrule = center, gotop

windowrule = float, title:nmtui
windowrule = center, title:nmtui
windowrule = size 800 500, title:nmtui

windowrulev2 = size 60% 60%, class:^(org.gnome.Meld)$
windowrulev2 = size 31% 50%, class:^(org.gnome.Meld)$ title:^(About Meld)$
windowrulev2 = float,class:^(org.gnome.Meld)$

windowrulev2 = float, class:^(org.gnome.Nautilus)$
windowrulev2 = size 685 450, class:^(org.gnome.Nautilus)$ title:^(Loading…)$
windowrule = float, pcmanfm

# FIREFOX WINDOWS RULES
windowrulev2 = workspace 2 silent, class:^(firefox)$
windowrulev2 = float,class:^(firefox)$ title:^(Library)$
windowrulev2 = float,title:^(About Mozilla Firefox)$
windowrulev2 = float,class:^(firefox)$ title:^(Firefox)$

# VISUAL STUDIO CODE RULES
windowrulev2 = float,class:^(code)$ title:^(Open Folder)$
windowrulev2 = float,class:^(code)$ title:^(Open File)$

windowrulev2 = workspace 2 silent, class:^(Brave-browser)$
# windowrulev2 = opacity 1 override 0.8 override, class:^(kitty)$
# windowrulev2 = opacity 0.8, class:^(Dunst)$

#  ███████╗ ██████╗██████╗ ███████╗███████╗███╗   ██╗███████╗██╗  ██╗ ██████╗ ████████╗
#  ██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝████╗  ██║██╔════╝██║  ██║██╔═══██╗╚══██╔══╝
#  ███████╗██║     ██████╔╝█████╗  █████╗  ██╔██╗ ██║███████╗███████║██║   ██║   ██║
#  ╚════██║██║     ██╔══██╗██╔══╝  ██╔══╝  ██║╚██╗██║╚════██║██╔══██║██║   ██║   ██║
#  ███████║╚██████╗██║  ██║███████╗███████╗██║ ╚████║███████║██║  ██║╚██████╔╝   ██║
#  ╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝

  $ScreenshotArea = hyprctl keyword animation "fadeOut,0,0,default"; grimblast --notify --cursor copysave area "$HOME/Pictures/Screenshots/$(date '+%Y-%m-%d_%H:%M:%S').png"; hyprctl keyword animation "fadeOut,1,4,default"
  bind = SUPER, Print, exec, $ScreenshotArea
  bind = , Print, exec, grimblast --notify --cursor copysave screen "$HOME/Pictures/Screenshots/$(date '+%Y-%m-%d_%H:%M:%S').png";


#  ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗
#  ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗
#  █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║
#  ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║
#  ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝
#  ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝

  # █▀▄▀█   █   █▀    █▀▀
  # █ ▀ █   █   ▄█    █▄▄

  bind = SUPER, P, togglefloating,
  bind = SUPER, P, pin, active
  bind = SUPER SHIFT, P, pseudo,
  bind = SUPER, M, exit,
  bind = SUPER, Q, killactive,
  bind = SUPER, S, togglesplit,
  bind = SUPER, F, fullscreen, 1
  bind = SUPER SHIFT, F, fullscreen, 0
  bind = SUPER, Space, togglefloating,
  bind = SUPER, F5, exec, hyprctl reload
  bind = ALT, F4, exec, hyprctl kill

  # █▄ █   █▀▀   █▀▀   █▀▀   █▀    █▀    ▄▀█   █▀█   █▄█
  # █ ▀█   ██▄   █▄▄   ██▄   ▄█    ▄█    █▀█   █▀▄    █

  bind = SUPER, J, exec, code
  bind = SUPER, B, exec, firefox
  bind = SUPER, U, exec, brave
  bind = SUPER, E, exec, nautilus
  bind = SUPER, X, exec, kitty
  bind = SUPER, Return, exec, [float] kitty

  bind = SUPER, Escape, exec, swaylock
  bind = SUPER SHIFT, X, exec, hyprpicker -a -n
  bind = SUPER, F2, exec, ~/.config/scripts/change-bg
  bind = SUPER, L, exec, ~/.config/scripts/lofi-beats
  bind = SUPER, F4, exec, killall rofi || $HOME/.config/scripts/powermenu
  bind = SUPER, D, exec, killall rofi || rofi -show drun -theme ~/.config/rofi/launcher.rasi
  bind = SUPER, period, exec, killall rofi || rofi -show emoji -modi emoji -theme ~/.config/rofi/emoji.rasi
  bind = SUPER, V, exec, killall rofi || cliphist list | rofi -dmenu -theme ~/.config/rofi/clipboard.rasi | cliphist decode | wl-copy
  bind = SUPER, F1, exec, killall rofi || rofi -dmenu -theme ~/.config/rofi/cheatsheet.rasi < ~/.config/Cheat-Sheet
  # bind = SUPER, C, exec, killall rofi || rofi -show emoji -emoji-format "{emoji}" -modi emoji -theme ~/.config/rofi/emoji.rasi
  bind = SUPER SHIFT, D, exec, killall rofi || ~/.config/scripts/rofi-bluetooth -theme ~/.config/rofi/bluetooth.rasi



#  ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗    ███╗   ███╗ █████╗ ███╗   ██╗ █████╗  ██████╗ ███╗   ███╗███████╗███╗   ██╗████████╗
#  ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║    ████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝ ████╗ ████║██╔════╝████╗  ██║╚══██╔══╝
#  ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║    ██╔████╔██║███████║██╔██╗ ██║███████║██║  ███╗██╔████╔██║█████╗  ██╔██╗ ██║   ██║
#  ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║    ██║╚██╔╝██║██╔══██║██║╚██╗██║██╔══██║██║   ██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║
#  ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝    ██║ ╚═╝ ██║██║  ██║██║ ╚████║██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗██║ ╚████║   ██║
#   ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝     ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝

  # █▀▀   █▀█   █▀▀   █ █   █▀
  # █▀    █▄█   █▄▄   █▄█   ▄█

  bind = SUPER, grave, cyclenext
  bind = SUPER, left, movefocus, l
  bind = SUPER, right, movefocus, r
  bind = SUPER, up, movefocus, u
  bind = SUPER, down, movefocus, d

  # █▀▄▀█   █▀█   █ █   █▀▀
  # █ ▀ █   █▄█   ▀▄▀   ██▄

  bind = SUPER CTRL, left, movewindow, l
  bind = SUPER CTRL, right, movewindow, r
  bind = SUPER CTRL, up, movewindow, u
  bind = SUPER CTRL, down, movewindow, d

  # █▀█   █▀▀   █▀    █   ▀█    █▀▀
  # █▀▄   ██▄   ▄█    █   █▄    ██▄

  bind = SUPER ALT, left, resizeactive, -20 0
  bind = SUPER ALT, right, resizeactive, 20 0
  bind = SUPER ALT, up, resizeactive, 0 -20
  bind = SUPER ALT, down, resizeactive, 0 20

  # ▀█▀   ▄▀█   █▄▄   █▄▄   █▀▀   █▀▄
  #  █    █▀█   █▄█   █▄█   ██▄   █▄▀

  bind = SUPER, T, togglegroup
  bind = ALT, Tab, changegroupactive

  # █▀    █▀█   █▀▀   █▀▀   █   ▄▀█   █
  # ▄█    █▀▀   ██▄   █▄▄   █   █▀█   █▄▄

  bind = ALT, grave, togglespecialworkspace
  bind = SUPERSHIFT, grave, movetoworkspace, special

  # █▀    █ █ █   █   ▀█▀   █▀▀   █ █
  # ▄█    ▀▄▀▄▀   █    █    █▄▄   █▀█

  bind = SUPER, 1, workspace, 1
  bind = SUPER, 2, workspace, 2
  bind = SUPER, 3, workspace, 3
  bind = SUPER, 4, workspace, 4
  bind = SUPER, 5, workspace, 5
  bind = SUPER, 6, workspace, 6
  bind = SUPER, 7, workspace, 7
  bind = SUPER, 8, workspace, 8
  bind = SUPER, 9, workspace, 9
  bind = SUPER, 0, workspace, 10
  bind = SUPER, N, workspace, empty
  bind = SUPER, tab, workspace, e+1
  bind = SUPER SHIFT, up, workspace, e+1
  bind = SUPER SHIFT, down, workspace, e-1

  # █▀▄▀█   █▀█   █ █   █▀▀
  # █ ▀ █   █▄█   ▀▄▀   ██▄

  bind = SUPER SHIFT, 1, movetoworkspace, 1
  bind = SUPER SHIFT, 2, movetoworkspace, 2
  bind = SUPER SHIFT, 3, movetoworkspace, 3
  bind = SUPER SHIFT, 4, movetoworkspace, 4
  bind = SUPER SHIFT, 5, movetoworkspace, 5
  bind = SUPER SHIFT, 6, movetoworkspace, 6
  bind = SUPER SHIFT, 7, movetoworkspace, 7
  bind = SUPER SHIFT, 8, movetoworkspace, 8
  bind = SUPER SHIFT, 9, movetoworkspace, 9
  bind = SUPER SHIFT, 0, movetoworkspace, 10
  bind = SUPER SHIFT, N, movetoworkspace, empty

  # █▀▄▀█   █▀█   █ █   █▀    █▀▀       █▄▄   █   █▄ █    █▀▄   █   █▄ █    █▀▀
  # █ ▀ █   █▄█   █▄█   ▄█    ██▄       █▄█   █   █ ▀█    █▄▀   █   █ ▀█    █▄█

  bindm = SUPER, mouse:272, movewindow
  bindm = SUPER, mouse:273, resizewindow
  bind = SUPER, mouse_down, workspace, e+1
  bind = SUPER, mouse_up, workspace, e-1


#  ██╗  ██╗███████╗██╗   ██╗    ███╗   ███╗ █████╗ ██████╗ ███████╗
#  ██║ ██╔╝██╔════╝╚██╗ ██╔╝    ████╗ ████║██╔══██╗██╔══██╗██╔════╝
#  █████╔╝ █████╗   ╚████╔╝     ██╔████╔██║███████║██████╔╝███████╗
#  ██╔═██╗ ██╔══╝    ╚██╔╝      ██║╚██╔╝██║██╔══██║██╔═══╝ ╚════██║
#  ██║  ██╗███████╗   ██║       ██║ ╚═╝ ██║██║  ██║██║     ███████║
#  ╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝

bind = SUPER, Prior, exec, brightnessctl set 5%+        # --INCREASE BRIGHTNESS BY 5%
bind = SUPER, Next, exec, brightnessctl set 5%-         # --DECREASE BRIGHTNESS BY 5%
bind = SUPER, Home, exec, brightnessctl set 69%         # --SET BRIGHTNESS TO 69%
bind = SUPER, KP_Add, exec, pamixer -i 1                # --INCREASE VOLUME BY 1%
bind = SUPER, KP_Subtract, exec, pamixer -d 1           # --DECREASE VOLUME BY 1%
bind = , PAUSE, exec, pamixer -m                        # --MUTE VOLUME
bind = SUPER, PAUSE, exec, pamixer -u                   # --UNMUTE VOLUME

# LAPTOP KEYBOARD KEY-BINDS
bind = , XF86MonBrightnessUp, exec, changebrightness up
bind = , XF86MonBrightnessDown, exec, changebrightness down
bind = , XF86AudioRaiseVolume, exec, changevolume up
bind = , XF86AudioLowerVolume, exec, changevolume down
bind = , XF86AudioMute, exec, changevolume mute
bind = , XF86AudioPrev, exec, playerctl prev
bind = , XF86AudioNext, exec, playerctl next
bind = , XF86AudioPlay, exec, playerctl play-pause
bind = , XF86AudioPause, exec, playerctl play-pause

		'';
	};
}
