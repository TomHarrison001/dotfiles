# My dotfiles!
They're finally organized (for now). I've previously used Arch and NixOS, both with hyprland. I've customised my waybar, terminal and firefox based on the colours of my background (also included).

## Contents
- [My dotfiles!](#my-dotfiles)
  - [Contents](#contents)
    - [File Overview](#file-overview)
    - [arch wifi](#arch-wifi)
    - [nixos wifi](#nixos-wifi)
    - [nixos flake](#nixos-flake)
    - [pywal](#pywal)
    - [pywalfox](#pywalfox)
    - [bluetoothctl](#bluetoothctl)
    - [github ssh](#github-ssh)
    - [disc drive](#disc-drive)

### File Overview

```
├── doom
│   └── .config
│       └── doom
│           ├── config.el
│           ├── init.el
│           └── packages.el
├── Downloads
│   └── tanjiroBackground.png
├── gtk-3.0
│   └── .config
│       └── gtk-3.0
│           └── gtk.css
├── hypr
│   └── .config
│       └── hypr
│           ├── binds.lua
│           ├── colours.lua
│           ├── hyprland.lua
│           └── hyprpaper.conf
├── nixos
│   └── etc
│       └── nixos
│           ├── configuration.nix
│           └── flake.nix
├── waybar
│   └── .config
│       └── waybar
|           ├── scripts
|           |   └── launch.sh
│           ├── config.jsonc
│           └── style.css
├── wofi
│   └── .config
│       └── wofi
│           └── style.css
└── .bashrc
```

### arch wifi

```bash
iwctl
device list
station <device> scan
station <device> get-networks
station <device> connect "<SSID>"
exit
```

### nixos wifi

```bash
nmcli device wifi connect <SSID> password <password>
```

### nixos flake

```bash
nix develop /etc/nixos/
```

### pywal

```bash
wal -i "file/path/to/image"
```

### pywalfox

```bash
pywalfox install
```
1. Install Firefox extension
2. Fetch Pywal colors

### bluetoothctl

```bash
bluetoothctl
power on
agent on
default-agent
scan on
pair <hex>
connect <hex>
trust <hex>
```

### github ssh

```bash
ssh-keygen -t ed25519 -c "email@example.com"
enter file in which to save: ~/.ssh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

### disc drive

```bash
modprobe sg
```
