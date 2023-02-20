# setup-desktop

## Oh My BASH!
```
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
```
```
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/oh-my-bash/install.sh)
```

## Docker
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/docker/install.sh)
```

## Flatpak
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/flatpak/install.sh)
```

## Git
```bash
 bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/git/install.sh) \
 -e leonardo.f.desouzasilva@gmail.com \
 -n leofdss 
```

## Nautilus scripts
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/nautilus-scripts/install.sh)
```

## Snap
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/snap/install.sh)
```

## VsCode
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/vscode/install.sh)
```

## Chrome
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/chrome/install.sh)
```

## Apps
### Install
```bash
wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/apps/database.json \
| bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/apps/install.sh)
```
### Uninstall
```bash
wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/apps/database.json \
| bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/apps/remove.sh)
```

## Xone
### Install
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/xone/install.sh)
```
### Uninstall
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/xone/uninstall.sh)
```

## Cockpit
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/cockpit/install.sh)
```

## Fonts
```bash
wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/fonts/database.json \
| bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/fonts/install.sh)
```
