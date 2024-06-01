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

## Git

```bash
 bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/git/install.sh) \
 -e leonardo.f.desouzasilva@gmail.com \
 -n "Leonardo Farias de Souza Silva"
```

## Fonts

```bash
wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/fonts/database.json \
| bash <(wget -qO- https://raw.githubusercontent.com/leofdss/setup-desktop/main/fonts/install.sh)
```
