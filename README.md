# My dotfiles!
They're finally organized (for now). I've previously used Arch and NixOS, both with hyprland. I've customised my waybar, terminal and firefox based on the colours of my background (also included).

## Contents
- [Files](#files)
- [Arch Wifi](#arch-wifi)
- [Nixos Wifi](#nixos-wifi)
- [Bluetoothctl](#bluetoothctl)
- [Github SSH](#github-ssh)
- [Disc Drive](#disc-drive)

### Files

```
├── Downloads
│   └── tanjiroBackground.png
├── hypr
│   └── .config
│       └── hypr
│           ├── binds.conf
│           ├── colours.conf
│           ├── hyprland.conf
│           └── hyprpaper.conf
├── nixos
│   └── etc
│       └── nixos
│           └── configuration.nix
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
