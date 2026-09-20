#Login na Plataforma
 Funcionalidade: Login na Plataforma
 Como cliente
 Quero fazer o login(autenticação) na plataforma
 Para visualizar meus pedidos

Cenário:
Dado a pagina de login
Quando inserir as credenciais validas no campo obrigatório ser direcioando para a tela de checkout
Então será direcioando para a tela de checkout 

Exemplos:
| usuario             | senha       | resultado | mensagem                     |
| cliente@teste.com   | Senha@123   | checkout  |                              |

Cenário: Campos inválidos
Dado a tela de login da EBAC-SHOP
Quando preencher o campos inválidos 
Então exibirá em <mensagem> "Usuário ou senha inválido"

Exemplos:

| usuario             | senha       | resultado | mensagem                     |
| invalido@teste.com  | Senha@123   | login     | Usuário ou senha inválidos   |
| cliente@teste.com   | SenhaErrada | login     | Usuário ou senha inválidos   |
|                     | Senha@123   | login     | Usuário ou senha inválidos   |
