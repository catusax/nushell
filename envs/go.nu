if ( sys | get host | get name) != "Windows"  {
    let-env PATH = ($env.PATH | append $"($env.HOME)/go/bin")
}