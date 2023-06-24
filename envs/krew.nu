if ( sys | get host | get name) != "Windows"  {
    let-env PATH = ($env.PATH | append $"($env.HOME)/.krew/bin")
} else {
    let-env Path = ($env.Path | append $"($env.HOMEPATH)/.krew/bin")
}