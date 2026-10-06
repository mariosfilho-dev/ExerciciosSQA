#Cadastro na Plataforma
Funcionalidade: Conclusão de cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Esquema de Cenário: Validação do preenchimento do cadastro
Dado que o usuário está na página de cadastro
Quando o usuário preencha o campo "Nome","E-mail" e "Senha"
Então quando concluir o cadastro o sitema exibirá a mensagem "Cadastro concluido com sucesso"

Exemplos:
| Nome        | Email               | Senha     | Mensagem                       |
| Ana Souza   | ana.souza@teste.com | Senha@123 | Cadastro concluído com sucesso |

Esquema de Cenário: Tentativa de cadastro com e-mail inválido
Dado que o usuário está na pagina de cadastro inicial na EBAC-SHOP
Quando o usuário cadastra o email 
E preenche com email inválido
Então exibirá a mensagem "Formato de e-mail inválido"

Exemplos:
| Nome        | Email                 | Senha     | Mensagem                   |
| Ana Souza   | ana..souza@teste..com | Senha@123 | Formato de e-mail inválido |

Esquema de Cenário: Tentativa de cadastro com campos vazios
Dado que o usuário está na página de cadastro inicial
Quando o usuário deixar no cadastro um campo vazio
Então o sistema exibirá a mensagem "Preencha todos os campos obrigatórios"

Exemplos:
| Nome        | Email               | Senha     | Mensagem                             |
| Maria Lima  |                     | Senha@123 | Preencha todos os campos obrigatórios|
| Pedro Rocha | pedro@teste.com     |           | Preencha todos os campos obrigatórios|
|             | pedro@teste.com     | Senha@123 | Preencha todos os campos obrigatórios|
