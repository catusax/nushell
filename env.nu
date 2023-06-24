if ( sys | get host | get name) != "Windows"  {
    let-env PATH = ($env.PATH | append /usr/local/bin)
}

source envs/clash.nu
source envs/starship.nu
source envs/brew.nu
source envs/go.nu
source envs/krew.nu
source envs/rust.nu
source envs/docker.nu