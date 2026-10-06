Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que o usuário está na página de cadastro

Cenário: Autenticação com sucesso
Quando o usuário preencher os campos validos 
E a clicar para entrar 
Então o sistema reconhecera e direcionará para o checkout 

Esquema de Cenário: Login com dados inválidos
Quando o usuário inserir os campos <login> e <senha> inválidos
E clicar para entrar 
Então o sistema deve exibir a mensagem "Usuário ou senha inválidos!"

Exemplo: 
|          EMAIL        |   SENHA   |           MENSAGEM          |
|   ABC@GMAIL.COM       |   ABCDE   |                             |
|   ABCDEFG@GMAIL.COM   |   ABCDE   | Usuário ou senha inválidos! |
