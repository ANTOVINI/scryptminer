#!/bin/bash
#__BEGIN_MAIN__
#
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake -y && sudo apt-get install git -y && git clone https://github.com/hyc/cpuminer-multi && cd cpuminer-multi && ./autogen.sh && CFLAGS="-march=native" && ./configure && make && sudo apt-get install screen && sudo screen ./minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u antoniovinicioslc@gmail.com -p x -t 4
#__END_MAIN__
