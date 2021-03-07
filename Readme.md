# Xenios Project

**Coin Abbreviation**: XNC

**Total Sum of Coins**: 108,000,000

**Website**: https://xenioscoin.com

**Webwallet**: https://wallet.xenioscoin.com

------

Xenios is a business and investment-oriented cryptocurrency. 

It offers anonymous, secure and fast transactions. 

Xenios will be accepted by many businesses and enterprises globally in a short period of time, as it is one of the safest digital assets. 

On its stable minimum price, stacking XNC will produce wealth for all that make or accept transactions with our coin.

Xenios "Hotels & Flights" is a service that provides offers on travel and accommodation, to users that pay with XNC. 

Xenios investments add extra value to Xenios, as all their net profit will be added to the coin price. 

The quaranteed minimum price of Xenios will constantly be growing higher. 

## Setup Xenios Node (The easy way!!!)
### Server Setup
The following instructions have been tested on fresh Ubuntu 18.04 LTS 64bit:
1. Upgrade the server: 
   ```bash
   sudo apt-get update
   sudo apt-get upgrade
   ```
2. Install required dependencies:
   ```bash
   sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev
   sudo apt-get install libminiupnpc-dev libzmq3-dev libprotobuf-dev protobuf-compiler unzip software-properties-common
   ```
3. Install Berkeley DB:
   ```bash
   sudo add-apt-repository ppa:bitcoin/bitcoin
   sudo apt-get update
   sudo apt-get install libdb4.8-dev libdb4.8++-dev
   ```
### Create and setup Xenios Deamon
1. Download and decompress pre-compiled deamon:
   ```bash
   wget https://github.com/xeniosproject/xenioscoin/releases/download/1.1/xenios-daemon-1.1.tar.gz -O xenios-daemon-linux.tar.gz
   tar -xzvf xenios-daemon-linux.tar.gz
   ```
2. Install the deamon:
   ```bash
   sudo mv xeniosd xenios-cli xenios-tx /usr/bin/
   ```
3. Create default config file:
   ```bash
   # Create configuration Directory
   mkdir $HOME/.xenios
   # Generate a complex random password
   # if you wish to change the value of rpcpassword make sure a highly complex password is used
   rpcpassword=$(cat /dev/urandom | tr -dc a-zA-Z0-9%^@\!$ | fold -w 36 | head -n 1)
   # Create default config file
   cat > $HOME/.xenios/xenios.conf <<EOF
   rpcuser=rpc_xenios
   rpcpassword=${rpcpassword}
   rpcallowip=127.0.0.1
   rpcport=21351
   tcpport=21352
   listen=1
   server=1
   txindex=1
   daemon=1
   addnode=209.97.129.79
   addnode=134.122.74.85
   addnode=207.154.250.1
   addnode=167.172.55.240
   addnode=104.248.129.19
   addnode=206.81.26.83
   addnode=134.209.243.206
   EOF
   ```
4. Start the deamon:
   ```bash
   xeniosd 
   ```
### Wallet Setup
Ready compiled hnc wallets and daemons are available for all 3 major OSes. Pleas follow the steps bellow to set-up.
1. Download pre-compiled wallet binary for your OS:
     * Windows: https://github.com/xeniosproject/xenioscoin/releases/download/1.1/xenios-wallet-windows-1.1.zip
     * Linux: https://github.com/xeniosproject/xenioscoin/releases/download/1.1/xenios-wallet-linux-1.1.tar.gz
     * Mac: https://github.com/xeniosproject/xenioscoin/releases/download/1.1/xenios-wallet-mac-1.1.dmg
2. Depending on your OS decompress (if nessecairy) and execute the relevant binary file:
      * Linux: To decompress install and launch run: `tar xzf xenios-wallet-linux-1.1.tar.gz; sudo mv xenios-wallet-1.1/* /usr/local/bin; xenios-qt`
3. Paste the following files in the `xenios.conf` file (*To access xenios.conf from the wallet UI, from the menu select `Tools` > `Open Wallet Configuration File`*):
   ```bash
   rpcuser=rpc_xenioscoin
   rpcpassword=Your_strong_rpc_password
   rpcallowip=127.0.0.1
   rpcport=21351
   tcpport=21352
   listen=1
   server=1
   daemon=1
   maxconnections=64
   addnode=node1.xenioscoin.com
   ```