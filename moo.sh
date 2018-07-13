#!/bin/bash
#__BEGIN_MAIN__
#
echo sudo apt-get install build-essential libcurl4-openssl-dev -y && wget https://github.com/pooler/cpuminer/releases/download/v2.4.5/pooler-cpuminer-2.4.5.tar.gz && tar xzf pooler-cpuminer-*.tar.gz && cd cpuminer-* && ./configure CFLAGS="-O3" && make && ./minerd --url=stratum+tcp://stratum.aikapool.com:7975 --userpass=antovini.vm:x

#__END_MAIN__

