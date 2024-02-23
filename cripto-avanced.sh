#!/data/data/com.termux/files/usr/bin/bash

# Cores
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
cyan='\033[0;36m'
nc='\033[0m' # No Color

# Função para criptografar um arquivo usando AES
encrypt_file_aes() {
    echo "${cyan}Digite o nome do arquivo para criptografar:${nc}"
    read file
    openssl enc -aes-256-cbc -e -in $file -out $file.enc
    echo "${green}Arquivo criptografado com sucesso: $file.enc${nc}"
}

# Função para descriptografar um arquivo usando AES
decrypt_file_aes() {
    echo "${cyan}Digite o nome do arquivo para descriptografar:${nc}"
    read file
    openssl enc -aes-256-cbc -d -in $file -out decrypted_$file
    echo "${green}Arquivo descriptografado com sucesso: decrypted_$file${nc}"
}

# Função para criptografar uma mensagem usando RSA
encrypt_message_rsa() {
    echo "${cyan}Digite a mensagem para criptografar:${nc}"
    read message
    echo "$message" > message.txt
    openssl rsautl -encrypt -pubin -inkey public_key.pem -in message.txt -out encrypted_message.txt
    echo "${green}Mensagem criptografada com sucesso: encrypted_message.txt${nc}"
}

# Função para descriptografar uma mensagem usando RSA
decrypt_message_rsa() {
    echo "${cyan}Digite o nome do arquivo com a mensagem criptografada:${nc}"
    read file
    openssl rsautl -decrypt -inkey private_key.pem -in $file -out decrypted_message.txt
    echo "${green}Mensagem descriptografada com sucesso: decrypted_message.txt${nc}"
}

# Menu de opções
while true; do
    echo "${yellow}Selecione uma opção:${nc}"
    echo "${yellow}1. Criptografar arquivo${nc}"
    echo "${yellow}2. Descriptografar arquivo${nc}"
    echo "${yellow}3. Criptografar mensagem${nc}"
    echo "${yellow}4. Descriptografar mensagem${nc}"
    echo "${yellow}5. Sair${nc}"
    read choice

    case $choice in
        1) encrypt_file_aes ;;
        2) decrypt_file_aes ;;
        3) encrypt_message_rsa ;;
        4) decrypt_message_rsa ;;
        5) break ;;
        *) echo "${red}Opção inválida, tente novamente.${nc}" ;;
    esac
done
