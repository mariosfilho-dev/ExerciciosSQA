#Configuração 
Funcionalidade: Configurar um produto
Como um cliente cadastrado
Eu quero configurar meu produto de acordo com o meu tamanho e gosto
E escolher quantidade

Funcionalidade: Configurar Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios de Aceitação:
Dado que eu esteja na pagina de configuração do produto
Quando eu selecionar o tamanho, cor e quantidade devem ser obrigatórios
E escolher a quantidade
Para depois inserir no carrinho

Esquema do Cenário: Seleções válidas e limites de quantidade
Dado que eu estou na página de um produto
Quando eu escolher a 
E o 
E definir a 
E clicar no botão "Adicionar ao carrinho"
Então o sistema deve apresentar a mensagem "<mensagem>" e o produto deve ser adicionado ao carrinho

Exemplos:
|cor|tamanho|quantidade|mensagem|
|"Azul"|"P"|1|"Produto adicionado ao carrinho com sucesso!"|
|"Preto"|"M"|10|"Produto adicionado ao carrinho com sucesso!"|
|"Preto"|"G"|11|"Erro: Permitido apenas o máximo de 10 produtos por venda."|

Esquema do Cenário: Validação de campos obrigatórios
Dado que eu estou na página de um produto
Quando eu tentar adicionar ao carrinho com a,o e a 
Então o sistema deve exibir a <mensagem_erro>

Exemplos:
|cor|tamanho|quantidade|mensagem_erro|
|"Nenhuma"|"M"|2|"Por favor, selecione uma cor."|
|"Azul"|"Nenhum"|1|"Por favor, selecione um tamanho."|
|"Verde"|"G"|0|"A quantidade deve ser maior que zero."|

Cenário: Limpar configurações do produto
Dado que eu selecionei a cor "Vermelho", o tamanho "GG" e a quantidade 5
Quando eu clicar no botão "Limpar"
Então os campos de cor, tamanho e quantidade devem voltar ao estado original vazio
