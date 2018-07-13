#!/bin/bash
#__BEGIN_MAIN__ 
#
echo git clone https://github.com/tsiv/ccminer-cryptonight.git && cd ccminer-cryptonight && chmod +x autogen.sh && ./autogen.sh && CFLAGS="-march=native" ./configure && make && sudo make install && ./ccminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u antoniovinicioslc@gmail.com -p x

__END_MAIN__