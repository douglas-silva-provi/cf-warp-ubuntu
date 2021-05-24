# cf-warp-ubuntu-install
script to install cloudflare warp on linux ubuntu
Cloudflare WARP Ubuntu

To install CloudFlare WARP on linux, it is done through the terminal. Just below a step by step on how to install:


  Before installation

On Ubuntu, open the terminal and type the following command to add the repository:

  $ echo ‘deb http://pkg.cloudflare.com/ <release ubuntu> main’ | sudo tee /etc/apt/sources.list.d/cloudflare-main.list

List of Releases:
    Focal = 20.04
    Bionic = 18.04
    Xenial = 16.04
    Wily = 15.10
    Vivid = 15.04
    Utopic = 14.10
    Trusty = 14.04
    Precise = 12.04

Example Ubuntu 20.04 (Focal): 
  $ echo ‘deb http://pkg.cloudflare.com/ focal main’ | sudo tee /etc/apt/sources.list.d/cloudflare-main.list

After creating the repository, you will need to import the GPG Key, to do this install the command 'curl' ($ sudo apt install curl) and then type the command:

  $ curl -c - https://pkg.cloudflare.com/pubkey.gpg | sudo apt-key add - 

After an update apt cache:
  $ sudo apt-get update
  
  
  
  Installation

After creating the repository and importing the key, the installation will be available, just type the command in the terminal:

  $ sudo apt install cloudflare-warp

The installation will be carried out, and you will be ready to connect and use the Cloudflare CLI.

  
  
  Using WARP

Now with WARP installed, just connect to the server by following the steps below:

It is necessary to register with warp before connecting, in the terminal, type:

  $ warp-cli register

To connect, just type:

  $ warp-cli connect

To be sure whether you are connected or not, run the command:

  $ curl https://www.cloudflare.com/cdn-cgi/trace/

And check if the warp=on option is enabled.

  
  
  Cloudflare Teams
To connect to Cloudflare Teams and register the device on the whitelist, type:

$ warp-cli teams-enroll DOMAIN.cloudflareaccess.com
