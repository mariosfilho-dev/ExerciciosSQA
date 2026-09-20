#Cadastro na Plataforma
Funcionalidade: Conclusão de cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra
  
Cenário: Validação do preenchimento do cadastro
Dado a página de checkout e cadastro da EBAC-SHOP
Quando preencho o campo "Nome*" com "<nome>"
E preencho o campo "E-mail*" com "<email>"
E preencho o campo "Senha*" com "<senha>"
E concluir o cadastro
Então exibirá a <acao_resultado> com a mensagem "<sucesso>"

Exemplos:
| nome        | email               | senha     | acao_resultado | mensagem                            |
| Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |

Cenário: Campo e-mail com formato inválido
Dado a pagina de cadastro inicial
E cadastrar email principal
Quando preecher o campo com email inválido
Então exibirá a <acao_resultado> com mensagem de erro "Formato de e-mail inválido"

Exemplos:
| nome        | email               | senha     | acao_resultado | mensagem                            |
| Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |
| Carlos Silva| ://teste.com        | Senha@123 | erro           | Formato de e-mail inválido          |

Cenário: Campos vazios, mensagem alerta
Dado a página de cadastro 
Quando cadastrar o login com campo vazio
Então exibirá a <acao_resultado> com a mensagem "Alerta: Preencha todos os campos obrigatórios"

Exemplos:
| nome        | email                | Senha    | alerta         | mensagem                             |
| Maria Lima  |                     | Senha@123 | alerta         | Preencha todos os campos obrigatórios|
| Pedro Rocha | pedro@teste.com     |           | alerta         | Preencha todos os campos obrigatórios|
