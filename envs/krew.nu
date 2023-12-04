if ( sys | get host | get name) != "Windows"  {
    $env.PATH = ($env.PATH | append $"($env.HOME)/.krew/bin")
} else {
    $env.Path = ($env.Path | append $"($env.HOMEPATH)/.krew/bin")
}