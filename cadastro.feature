#Cadastro na Plataforma
Funcionalidade: Conclusão de cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra
  
Cenário: Validação do preenchimento do cadastro
Dado que na página de checkout e cadastro da EBAC-SHOP
Quando preencho os campo "Nome*","E-mail*","Senha*" e clico em "Concluir o cadastro*"
Então o sitema exibirá a mensagem "Cadastro concluido com sucesso*"

Exemplos:
| nome        | email               | senha     | acao_resultado | mensagem                            |
| Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |

Cenário: Campo e-mail com formato inválido
Dado que a pagina de cadastro inicial 
Quando o cliente cadastrar o email principal e preencher o campo com email inválido
Então exibirá a mensagem "formato de e-mail inválido*"

Exemplos:
| nome        | email               | senha     | acao_resultado | mensagem                            |
| Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |
| Carlos Silva| ://teste.com        | Senha@123 | erro           | Formato de e-mail inválido          |

Cenário: Campos vazios, mensagem alerta
Dado que a página de cadastro inicial
Quando o cliente for cadastrar o login e apertar para concluir e deixar o campo vazio
Então exibirá a mensagem "Preencha todos os campos obrigatórios*"

Exemplos:
| nome        | email                | Senha    | alerta         | mensagem                             |
| Maria Lima  |                     | Senha@123 | alerta         | Preencha todos os campos obrigatórios|
| Pedro Rocha | pedro@teste.com     |           | alerta         | Preencha todos os campos obrigatórios|
