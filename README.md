<p align="center">
  <a href="#">
    <img src="https://i.imgur.com/X5zKxvp.png" width=300px alt="Home Preview">
  </a>
</p>

<h1>
  <a href="#">
    <img alt="" align="left" src="https://img.shields.io/github/watchers/Bibhuti1221Bhushan/Cute-Dots?color=0C0E0F&labelColor=0C0E0F&style=for-the-badge"/>
  </a>
  <a href="#">
    <img alt="" align="right" src="https://img.shields.io/github/repo-size/Bibhuti1221Bhushan/Cute-Dots?color=0C0E0F&labelColor=0C0E0F&style=for-the-badge"/>
  </a>
</h1>

<h3 align="center">- Cute Dots -</h3>

> ## <sup><sub><samp>PLEASE RESPECT THE CREDITS IF YOU USE SOMETHING FROM MY SETUP.</samp></sub></sup>

## :snowflake: Information :

<a href="#octocat--hi-there-thanks-for-dropping-by">
  <picture>
    <img alt="" align="right" width="400px" src="https://i.imgur.com/XaTP9jh.png"/>
  </picture>
</a>

- **Window Manager** • [Hyprland](https://github.com/hyprwm/Hyprland)🎨 Tiles
  Everywhere!
- **Shell** • [Zsh](https://www.zsh.org) 🐚 with
  [starship](https://github.com/starship/starship) Cross Shell Platform!
- **Terminal** • [WezTerm](https://github.com/wez/wezterm) 💻 A powerful term
  with gpu support!
- **Panel** • [Waybar](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧
  Patched waybar following hyprland faq!
- **Notify Daemon** • [Dunst](https://github.com/dunst-project/dunst) 🍃
  Minimalist and functional!
- **Launcher** • [AnyRun](https://github.com/Kirottu/anyrun) 🚀 Fast AnyRunner!
- **File Manager** • [Ranger](https://github.com/ranger/ranger)🔖 custom!
- **GUI Basic-IDE** • [NvChad-V2](https://github.com/linuxmobile/nvchad-v2) Rice
  IDE!

### 🍂 <samp>CHANGELOGS</samp>

> From the previous major versions (0-1.x).

## 🌼 <samp>INSTALLATION (NixOS)</samp>

> Request: [NixOs](https://channels.nixos.org/nixos-23.05/latest-nixos-minimal-x86_64-linux.iso)

- Download ISO.

```bash
wget -O https://channels.nixos.org/nixos-23.05/latest-nixos-minimal-x86_64-linux.iso
```

- Boot Into the Installer.

- Switch to Root: `sudo -i`

- Partitions:

_I prefer to use 1GB on the EFI partition. Specifically because the 'generations' list may become very long, and to avoid overloading the partition._

```bash
# Replace nvme with your disk partition
gdisk /dev/nvme0n1
```

    - `o` (create new partition table)
    - `n` (add partition, 512M, type ef00 EFI)
    - `n` (add partition, remaining space, type 8300 Linux)
    `w` (write partition table and exit)

- Format Partitions:

```bash
mkfs.fat -F 32 -n EFI /dev/nvme0n1p1
mkfs.xfs -L NIXOS /dev/nvme0n1p2
```

- Mount Partitions:

```bash
mount /dev/disk/by-label/NIXOS /mnt
mkdir -p /mnt/boot
mount /dev/disk/by-label/EFI /mnt/boot
```

- Enable nixFlakes

```bash
nix-shell -p nixFlakes
```

- Install Dotfiles Using Flake

```bash
nixos-install --flake 'github:linuxmobile/kaku#linudev'
```

- Reboot

### 🐙 <sup><sub><samp>Remember <strong>Default</strong> User & password are: nixos</samp></sub></sup>

- Change Default password for User.

```bash
passwd YourUser
```

- Install w/ Home-Manager the config

```bash
home-manager switch --flake 'github:linuxmobile/kaku#linudev@aesthetic'
```

### 🌸 <samp>DOTFILES EXPLAIN</samp>

### 🌻 <samp>TODO LIST</samp>

### 🎋 <samp>ADDITIONALS</samp>

## 🍀 <samp>KEY BINDINGS</samp>

## 💐 <samp>ACKNOWLEDGEMENTS</samp>

|           |     | Inspiration and Resources                    |                            |     |
| :-------: | :-: | :------------------------------------------- | :------------------------- | :-: |
|           |  1  | [owl4ce](https://github.com/owl4ce)          |                            |     |
|           |  2  | [Ilham25](https://github.com/ilham25)        |                            |     |
|           |  3  | [Siduck](https://github.com/siduck)          |                            |     |
|           |  4  | [NvChad](https://github.com/NvChad)          |                            |     |
|           |  5  | [Rxyhn](https://github.com/rxyhn)            |                            |     |
|           |  6  | [HeinzDev](https://github.com/HeinzDev)      |                            |     |
|           |  7  | [fufexan](https://github.com/fufexan)        |                            |     |
|           |  8  | [AmitGolden](https://github.com/AmitGolden)  |                            |     |
|           |     |                                              |                            |     |
| **Based** |     | **Community**                                | **Membership Status**      |     |
|     🗺     |  3  | [r/unixp\*rn](https://reddit.com/r/unixporn) | Not working there anymore. |     |

## 🌳 <samp>CONTRIBUTING</samp>

WIP

## 🎃 <samp>SECURITY POLICY</samp>

<pre align="center">
<a href="#readme">BACK TO TOP</a>
</pre>
