#!/usr/bin/env nu

config reset

if not (open $nu.config-path | str contains $"source ($env.PWD)/config.nu" ) {
    echo $"\nsource ($env.PWD)/config.nu" | save --append $nu.config-path
}

if not (open $nu.env-path | str contains $"source ($env.PWD)/env.nu" ) {
    echo $"\nsource ($env.PWD)/env.nu" | save --append $nu.env-path
}

mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu
cp starship.toml ~/.config/starship.toml