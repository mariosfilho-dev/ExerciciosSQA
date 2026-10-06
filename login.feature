#Login na Plataforma
 Funcionalidade: Login na Plataforma
 Como cliente da EBAC-SHOP
 Quero fazer o login(autenticação) na plataforma
 Para visualizar meus pedidos

Esquema de Cenário: Autenticação com sucesso
Dado que o usuário está na pagina de login e preencher as credenciais válidas
Quando clicar no "Login"
Então será exibida a mensagem "Meus pedidos" 

Exemplos:
| Login               | Senha       |   Mensagem    |
| cliente@teste.com   | Senha@123   | "Meus pedidos"|                              

Esquema de Cenário: Campos inválidos
Dado que o usuário esta na página de login do site EBAC-SHOP
Quando preencher os campos invalidos no site e clicar para concluir
Então sera exibida a mensagem "Usuário ou senha inválidos"

Exemplos:
| Login               | Senha       | Mensagem                     |
| invalido@teste.com  | Senha@123   | Usuário ou senha inválidos   |
