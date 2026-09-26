#Login na Plataforma
 Funcionalidade: Login na Plataforma
 Como cliente da EBAC-SHOP
 Quero fazer o login(autenticação) na plataforma
 Para visualizar meus pedidos

Cenário:
Dado a pagina de login no site
Quando o sistema inserir as credenciais validas no campo obrigatório 
Então será direcioando para a tela de checkout 

Exemplos:
| usuario             | senha       | resultado | mensagem                     |
| cliente@teste.com   | Senha@123   | checkout  |                              |

Cenário: Campos inválidos
Dado que o cliente esteja na página de login do site EBAC-SHOP
Quando o usuário preencher os campos invalidos no site e clicar em concluir
Então exibirá a mensagem "Usuário ou senha inválidos"

Exemplos:

| usuario             | senha       | resultado | mensagem                     |
| invalido@teste.com  | Senha@123   | login     | Usuário ou senha inválidos   |
| cliente@teste.com   | SenhaErrada | login     | Usuário ou senha inválidos   |
|                     | Senha@123   | login     | Usuário ou senha inválidos   |
