let-env https_proxy = 'http://127.0.0.1:7890'
let-env http_proxy  = 'http://127.0.0.1:7890'
let-env all_proxy = 'socks5://127.0.0.1:7890'

def set-proxy [] {
    let-env https_proxy = 'http://127.0.0.1:7890'
    let-env http_proxy  = 'http://127.0.0.1:7890'
    let-env all_proxy = 'socks5://127.0.0.1:7890'
}

def unset-proxy [] {
    hide-env https_proxy
    hide-env http_proxy
    hide-env all_proxy
}
