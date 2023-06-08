module proxy {
    export-env {
        load-env { 
            https_proxy : 'http://127.0.0.1:7890'
            http_proxy  : 'http://127.0.0.1:7890'
            all_proxy : 'socks5://127.0.0.1:7890'
        }
    }
}

module noproxy {
    export-env {
        load-env { 
            https_proxy : ''
            http_proxy  : ''
            all_proxy : ''
        }
    }
}

overlay use proxy

alias proxy = overlay use proxy

alias uproxy = overlay use noproxy