#!/bin/bash
#__BEGIN_MAIN__
#
echo sudo apt-get install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y && git clone https://github.com/wolf9466/cpuminer-multi && cd scryptminer/cpuminer-multi/ && chmod +x autogen.sh && ./autogen.sh && CFLAGS="-march=native" ./configure && make && sudo make install && apt-get install screen
#__END_MAIN__
