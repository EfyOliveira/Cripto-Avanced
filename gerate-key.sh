#!/data/data/com.termux/files/usr/bin/bash

# Instalação do OpenSSL (se ainda não estiver instalado)
pkg install openssl -y

# Geração das chaves RSA
openssl genpkey -algorithm RSA -out private_key.pem
openssl rsa -pubout -in private_key.pem -out public_key.pem
