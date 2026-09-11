#Login na Plataforma
Funcionalidade: Login na Plataforma
  Como cliente da plataforma
  Eu quero fazer o login(autenticação) na plataforma

 Funcionalidade: Autenticação
 Como cliente
 Quero fazer o login(autenticação)
 Para visualizar meus pedidos

Criterios de Aceitação:
  Dado que o usuário estao na pagina de login
  Quando inserir as credenciais validas deve ser direcioando para a tela de checkout
  Então ao inserir as credenciais inválidas deve ser exibido uma mensagem de alerta "Usuário ou senha inválidos"

Funcionalidade: Autenticação de Clientes
  Esquema do Cenário: Realizar login na EBAC-SHOP
    Dado que estou na tela de login da EBAC-SHOP
    Quando preencho o campo de usuário "<usuario>"
    E preencho o campo de senha "<senha>"
    E clico no botão de entrar
    Então devo ser direcionado para a tela de "<resultado>"
    E devo visualizar a mensagem "<mensagem>"

    Exemplos:

      | usuario             | senha       | resultado | mensagem                     |
      | cliente@teste.com   | Senha@123   | checkout  |                              |
      | invalido@teste.com  | Senha@123   | login     | Usuário ou senha inválidos   |
      | cliente@teste.com   | SenhaErrada | login     | Usuário ou senha inválidos   |
      |                     | Senha@123   | login     | Usuário ou senha inválidos   |
