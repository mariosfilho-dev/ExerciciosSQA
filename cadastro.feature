Funcionalidade: Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que o usuário está na página de cadastro

Esquema de Cenário: Cadastro com todos campos obrigatórios
Quando preenche os campos "nome", "email" e "senha"
E apertar em "concluir" 
Então o sistema reconhecerá o cadastro

Esquema de Cenário: Tentativa de cadastro com email inválido
Quando o usuário cadastra um NOME<nome>, EMAIL<email>, SENHA<senha>
E clicar em "cadastrar"
Então o sistema exibirá a MENSAGEM<mensagem>

Exemplo: 
|   NOME   |          EMAIL        |   SENHA   |        MENSAGEM       |
|   ABC    |   ABC@GMAIL.COM       |   ABCDE   |       Cadastrado      |
|   ABC    |   ABCDEFG@GMAIL.COM   |   ABCDE   | Erro: Campo inválido! |

Cenário: Tentativa de cadastro com campos vazios
Quando o usuário não preencher os campos obrigatório 
E clicar para "concluir"
Então o sistema exibirá a mensagem <alerta> "Campo Vazio!"

Exemplo: 
|   NOME   |          EMAIL        |   SENHA   |        ALERTA         |
|   ABC    |   ABC@GMAIL.COM       |   ABCDE   |                       |
|   ABC    |   ABCDEFG@GMAIL.COM   |           |      CAMPO VAZIO!     |
