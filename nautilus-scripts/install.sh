#!/usr/bin/env bash

cat <<- EOF > "$HOME/.local/share/nautilus/scripts/Install fonts"
#!/usr/bin/env bash

install_fonts() {
 mkdir -p "\$HOME/.local/share/fonts"

  echo "\$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | while read 'item'
  do
    if [[ -f "\$item" ]]
    then
      cp "\$item" "\$HOME/.local/share/fonts"
    fi
    if [[ -d "\$item" ]]
    then
      cp -r "\$item" "\$HOME/.local/share/fonts"
    fi
  done
}

install_fonts
EOF

chmod +x "$HOME/.local/share/nautilus/scripts/Install fonts"