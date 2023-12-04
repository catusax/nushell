if ( sys | get host | get name) != "Windows"  {
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
}
