if ( sys | get host | get name) != "Windows"  {
    $env.PATH = ($env.PATH | append $"($env.HOME)/.cargo/bin")
    $env.PATH = ($env.PATH | append $"($env.HOME)/.nargo/bin")
}