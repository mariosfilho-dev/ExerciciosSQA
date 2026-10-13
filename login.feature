Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que o usuário está na página de cadastro

Cenário: Autenticação com sucesso
Quando o usuário preencher os campos 
E clicar "concluir"
Então o sistema deverá direcinar o usuário para checkout 

Esquema de Cenário: Login com dados inválidos
Quando o usuário inserir os campos login<LOGIN> e senha<SENHA> inválidos
E clicar em "entrar" 
Então o sistema deve exibir em <MENSAGAM> "Usuário ou senha inválidos!"

Exemplo: 
|          LOGIN        |   SENHA   |           MENSAGEM          |
|     ABC@GMAIL.COM     |   ABCDE   |                             |
|   ABCDEFG@GMAIL.COM   |   ABCDE   | Usuário ou senha inválidos! |
|     ABC@GMAIL.COM     |    ABC    | Usuário ou senha inválidos! |
