#Cadastro na Plataforma
Funcionalidade: Conclusão de cadastro
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de checkout e cadastro da EBAC-SHOP

  Esquema do Cenário: Validação do preenchimento do cadastro
    Quando preencho o campo "Nome*" com "<nome>"
    E preencho o campo "E-mail*" com "<email>"
    E preencho o campo "Senha*" com "<senha>"
    E tento concluir o cadastro
    Então o sistema deve exibir a <acao_resultado> com a mensagem "<mensagem>"

    Exemplos:

      | nome        | email               | senha     | acao_resultado | mensagem                            |
      | Ana Souza   | ana.souza@teste.com | Senha@123 | sucesso        | Cadastro concluído com sucesso      |
      | Carlos Silva| ://teste.com        | Senha@123 | erro           | Formato de e-mail inválido          |
      |             | joao@teste.com      | Senha@123 | alerta         | Preencha todos os campos obrigatórios|
      | Maria Lima  |                     | Senha@123 | alerta         | Preencha todos os campos obrigatórios|
      | Pedro Rocha | pedro@teste.com     |           | alerta         | Preencha todos os campos obrigatórios|
