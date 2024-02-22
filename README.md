# Cripto-Avanced

Este script em Bash permite criptografar e descriptografar arquivos usando AES e criptografar e descriptografar mensagens usando RSA.

## Requisitos

- OpenSSL
- Chaves RSA (public_key.pem e private_key.pem) para criptografia e descriptografia de mensagens.

## Como usar

1. Clone ou baixe este repositório.
`git clone https://github.com/EfyOliveira/Cripto-Avanced/`
2. Certifique-se de ter as chaves RSA (public_key.pem e private_key.pem) disponíveis no mesmo diretório que o script.
3. Dê permissão de execução ao script: `chmod +x cripto-avanced.sh`.
4. Execute o script: `./cripto-avanced.sh`.
5. Selecione uma opção no menu para criptografar ou descriptografar um arquivo ou mensagem.

## Funcionalidades

- **Criptografar arquivo:** Criptografa um arquivo usando AES.
- **Descriptografar arquivo:** Descriptografa um arquivo criptografado usando AES.
- **Criptografar mensagem:** Criptografa uma mensagem usando RSA.
- **Descriptografar mensagem:** Descriptografa uma mensagem criptografada usando RSA.

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir problemas (issues) ou enviar pull requests com melhorias ou correções.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).
