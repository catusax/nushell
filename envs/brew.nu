if ( sys | get host | get name) != "Windows"  {
    let-env PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
}
