if ( sys host | get name) != "Windows"  {
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
    $env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/opt/llvm/bin')
}
