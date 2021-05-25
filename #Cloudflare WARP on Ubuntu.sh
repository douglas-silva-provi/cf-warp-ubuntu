#Cloudflare WARP on Ubuntu
#
#
#add repository
#    $ echo deb http://pkg.cloudflare.com/ <release ubuntu> main | sudo tee /etc/apt/sources.list.d/cloudflare-main.list
#
#check your release
    $ lsb_release -d
#
#example add repository with release ubuntu 20.04
    $ echo deb http://pkg.cloudflare.com/ focal main | sudo tee /etc/apt/sources.list.d/cloudflare-main.list
#
#
#
#import GPG Key
#    install comando 'curl': $ sudo apt install curl
#
        $ curl -c - https://pkg.cloudflare.com/pbkey.gpg | sudo apt-key add -
#
#
#update cache
    $ sudo apt-get update
#
#
#
#installation
    $ sudo apt install cloudflare-warp
#
#
#
#principals commands on warp-cli
#    first utilization, register to WARP
        $ warp-cli register
#
#    after, connect to WARP for access apps to VPN connection
        $ warp-cli connect
#
#see successful connection - verify to warp=on is OK!
    $ curl https://www.cloudflare.com/cdn-cgi/trace/
#
