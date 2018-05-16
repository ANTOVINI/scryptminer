#!/usr/bin/env python

import hashlib
import base58
import os

from base58 import b58encode

privkey = os.urandom(32)

print(privkey)

privkey_int = int.from_bytes(privkey, byteorder='little')
print(privkey_int)

privkey_hex = hex(privkey_int)
print(privkey_hex)

def shasha(data): 
    """SHA256(SHA256(data)) -> HASH object"""
    result = hashlib.sha256(hashlib.sha256(data).digest()) 
    return result # agora criamos a função que passará a chave para formato WIF... 
    
def privkey_to_wif(rawkey, compressed=True): 
    """Converte os bytes da chave privada para WIF"""
    k = b'\x80' + rawkey # adicionamos o prefixo da mainet # por padrão criamos formado comprimido 
    
    if compressed: 
       
        k += b'\x01' # sufixo para indicar chave comprimida 
      
    checksum = shasha(k).digest()[:4] # os primeiros 4 bytes da chave como checksum 
    
    key = k + checksum 
    
    b58key = b58encode(key) 
    
    return b58key # agora podemos usar a função privkey_to_wif com a nossa chave privada privkey obtida no exemplo anterior 

privkey_wif = privkey_to_wif(privkey) 
print('ok:',privkey_wif)