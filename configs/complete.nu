source ~/.cache/carapace/init.nu
# let carapace_completer = {|spans| 
#   carapace $spans.0 nushell $spans | from json
# }

# $env.config = {
#   completions: {
#     external: {
#       enable: true
#       completer: $carapace_completer
#     }
#   }
# }

# let external_completer = {|spans| 
#   {
#     $spans.0: { } # default
#     kubectl: { carapace kubectl nushell $spans | from json }
#   } | get $spans.0 | each {|it| do $it}
# }

# $env.config = {
#   completions: {
#     external: {
#       enable: true
#       completer: $external_completer
#     }
#   }
# }