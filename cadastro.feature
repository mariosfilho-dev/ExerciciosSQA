#Cadastro na Plataforma
Funcionalidade: Conclusão de cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra
  
Cenário: Validação do preenchimento do cadastro
Dado que a página de checkout e cadastro da EBAC-SHOP
Quando preencho o campo "Nome*" 
E preencho o campo "E-mail*" 
E preencho o campo "Senha*" 
Então quando concluir o cadastro exibirá a "acao_resultado*" a mensagem <sucesso>
E a "mensagem*" <Cadastro concluido com sucesso>

Exemplos:
| nome        | email               | senha     | acao_resultado | mensagem                            |
| Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |

Cenário: Campo e-mail com formato inválido
Dado que a pagina de cadastro inicial
E quando o cliente cadastrar o email principal
Quando preencher o campo com email inválido
Então exibirá "acao_resultado*" a mensagem <erro>
E a "mensagem*" <Formato de e-mail inválido>
E preencher o campo valido
Então exibirá "acao_resultado*" a mensagem <sucesso>
E a "mensagem*" <Cadastro concluído com sucesso>


Exemplos:
| nome        | email               | senha     | acao_resultado | mensagem                            |
| Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |
| Carlos Silva| ://teste.com        | Senha@123 | erro           | Formato de e-mail inválido          |

Cenário: Campos vazios, mensagem alerta
Dado que a página de cadastro 
Quando cadastrar o login com campo vazio
Então exibirá a "acão_resultado*" a mensagem <alerta> 
E a "mensagem*" <Preencha todos os campos obrigatórios>

Exemplos:
| nome        | email                | Senha    | alerta         | mensagem                             |
| Maria Lima  |                     | Senha@123 | alerta         | Preencha todos os campos obrigatórios|
| Pedro Rocha | pedro@teste.com     |           | alerta         | Preencha todos os campos obrigatórios|
