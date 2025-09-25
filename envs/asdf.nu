if ( sys host | get name) == "Darwin"  {
    let shims_dir = (
    if ( $env | get --optional ASDF_DATA_DIR | is-empty ) {
        $env.HOME | path join '.asdf'
    } else {
        $env.ASDF_DATA_DIR
    } | path join 'shims'
    )
    $env.PATH = ( $env.PATH | split row (char esep) | where { |p| $p != $shims_dir } | prepend $shims_dir )

    $env.ASDF_DIR = "/opt/homebrew/opt/asdf/libexec"

    let asdf_data_dir = (
    if ( $env | get --optional ASDF_DATA_DIR | is-empty ) {
        $env.HOME | path join '.asdf'
    } else {
        $env.ASDF_DATA_DIR
    }
    )
    source "~/.asdf/completions/nushell.nu"
}
