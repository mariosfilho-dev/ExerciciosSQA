Funcionalidade: Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que o usuário está na página de cadastro

Cenário: Cadastro com todos campos obrigatórios
Quando preenche os campos "nome","email" e "senha" validos
Então o sistema reconhecerá o cadastro

Cenário: Tentativa de cadastro com email inválido
Quando o usuário cadastra um <email> valido 
E preencher com <email> invalido
Então o sistema exibirá a <mensagem> "Erro: Campo inválido!"

Exemplo: 
|   NOME   |          EMAIL        |   SENHA   |        MENSAGEM       |
|   ABC    |   ABC@GMAIL.COM       |   ABCDE   |                       |
|   ABC    |   ABCDEFG@GMAIL.COM   |   ABCDE   | Erro: Campo inválido! |

Cenário: Tentativa de cadastro com campos vazios
Quando o usuário não preencher todos campos obrigatório sugeridos
E clicar para concluir o cadastro
Então o sistema exibirá a mensagem <alerta> "Campo Vazio!"

Exemplo: 
|   NOME   |          EMAIL        |   SENHA   |        ALERTA         |
|   ABC    |   ABC@GMAIL.COM       |   ABCDE   |                       |
|   ABC    |   ABCDEFG@GMAIL.COM   |           |      CAMPO VAZIO!     |
