# setup-desktop

> [!WARNING]
> Ubuntu only!

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
 -n "Leonardo Farias de Souza Silva" 
```

## Nautilus scripts
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/nautilus-scripts/install.sh)
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

## Fonts
```bash
wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/fonts/database.json \
| bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/fonts/install.sh)
```

## Codec
```bash
bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/codec/install.sh)
```
