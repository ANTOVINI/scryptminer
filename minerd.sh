#!/bin/bash
#__BEGIN_MAIN__
#
echo sudo apt-get install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y && git clone https://github.com/wolf9466/cpuminer-multi && cd cpuminer-multi/ && chmod +x autogen.sh && ./autogen.sh && CFLAGS="-march=native" ./configure && make && sudo make install && ./minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u antoniovinicioslc@gmail.com -p x

#__END_MAIN__
