
# Krew is the package manager for kubectl plugins.
# https://github.com/kubernetes-sigs/krew
if ( sys host | get name) != "Windows"  {
    $env.PATH = ($env.PATH | append $"($env.HOME)/.krew/bin")
} else {
    $env.Path = ($env.Path | append $"($env.HOMEPATH)/.krew/bin")
}