# Cripto-Avanced

Este script em Bash permite criptografar e descriptografar arquivos usando AES e criptografar e descriptografar mensagens usando RSA.

## Requisitos

- OpenSSL
- Chaves RSA (public_key.pem e private_key.pem) para criptografia e descriptografia de mensagens.

## Como usar

1. Clone ou baixe este repositório.
`git clone https://github.com/EfyOliveira/Cripto-Avanced/`
2. Certifique-se de ter as chaves RSA (public_key.pem e private_key.pem). Para isso deixei um script para gerar as chaves aqui abaixo disponíveis no mesmo diretório que o script.
Entre na pasta e executebo script para gerar chaves.
`cd Cripto-Avanced`
`chmod +x gerate-key.sh`
`sh gerate-key.sh`
Pronto, chaves geradas...
4. Dê permissão de execução ao script: `chmod +x cripto-avanced.sh`.
5. Execute o script: `./cripto-avanced.sh`.
6. Selecione uma opção no menu para criptografar ou descriptografar um arquivo ou mensagem.

## Obs:

Lembrando que apos a criptografia, voce deve guarda as chaves tanto pública, quanto a chave privada.

Para descriptografar deve ser ultilizada as mesmas chaves da criptografia.

## Funcionalidades

- **Criptografar arquivo:** Criptografa um arquivo usando AES.
- **Descriptografar arquivo:** Descriptografa um arquivo criptografado usando AES.
- **Criptografar mensagem:** Criptografa uma mensagem usando RSA.
- **Descriptografar mensagem:** Descriptografa uma mensagem criptografada usando RSA.

## Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir problemas (issues) ou enviar pull requests com melhorias ou correções.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).
