#!/usr/bin/env nu

config reset

if not (cat $nu.config-path | str contains $"source ($env.PWD)/config.nu" ) {
    echo $"\nsource ($env.PWD)/config.nu" | save --append $nu.config-path
}

if not (cat $nu.env-path | str contains $"source ($env.PWD)/env.nu" ) {
    echo $"\nsource ($env.PWD)/env.nu" | save --append $nu.env-path
}

cp starship.toml ~/.config/starship.toml