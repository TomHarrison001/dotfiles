# My dotfiles!
They're finally organized (for now). I've previously used Arch and NixOS, both with hyprland. I've customised my waybar, terminal and firefox based on the colours of my background (also included).

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

## bluetoothctl

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

## github ssh

```bash
ssh-keygen -t ed25519 -c "email@example.com"
enter file in which to save: ~/.ssh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

## disc drive

```bash
modprobe sg
```
