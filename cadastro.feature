Funcionalidade: Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que o usuário está na página de cadastro

Cenário: Cadastro com todos campos obrigatórios
Quando preenche os campos "nome", "email" e "senha"
E apertar em "concluir" 
Então o sistema concluirá o cadastro

Esquema de Cenário: Tentativa de cadastro com email inválido
Quando o usuário cadastra um nome<NOME>, email<EMAIL>, senha<SENHA>
E clicar em "cadastrar"
Então o sistema exibirá a mensagem<MENSAGEM>

Exemplo: 
|   NOME   |          EMAIL        |   SENHA   |        MENSAGEM       |
|   ABC    |   ABC@GMAIL.COM       |   ABCDE   |       Cadastrado      |
|   ABC    |   ABCDEFG@GMAIL.COM   |   ABCDE   | Erro: Campo inválido! |

Esquema de Cenário: Tentativa de cadastro com campos vazios
Quando o usuário não preencher os campos nome<NOME>, email<EMAIL>, senha<SENHA>
E clicar em "concluir"
Então o sistema exibirá a mensagem <ALERTA> "Campo Vazio!"

Exemplo: 
|   NOME   |          EMAIL        |   SENHA   |        ALERTA         |
|   ABC    |   ABC@GMAIL.COM       |   ABCDE   |                       |
|   ABC    |   ABCDEFG@GMAIL.COM   |           |      CAMPO VAZIO!     |
