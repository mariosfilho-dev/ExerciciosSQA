#Configuração

Funcionalidade: Configurar Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Selecões de cor, tamanho e quantidade devem ser obrigatórios
Dado que a pagina de configuração do produto
Quando não selecionar o "tamanho" , "cor" e "quantidade" 
Então será exibida a mensagem "Seleção obrigatório"

Cenário: Limitação de produtos
Dado a quantidade for permitidos até 10 produtos
Quando selecionar 12 produtos 
Então sera exibida a mensagem "Erro: Permitido apenas 10 produtos por venda." 

Exemplos:
|cor|tamanho|quantidade|mensagem|
|"Azul"|"P"|1|"Produto adicionado ao carrinho com sucesso!"|
|"Preto"|"M"|10|"Produto adicionado ao carrinho com sucesso!"|
|"Preto"|"G"|11|"Erro: Permitido apenas 10 produtos por venda."|

Cenário: Validação de campos obrigatórios
Dado que a página de um produto 
Quando deixar o campos obrigatórios vazios  
Então sera exibida a mensagem "Par favor, preencher o campo obrigatório"

Exemplos:
|cor|tamanho|quantidade|mensagem|
|"Nenhuma"|"M"|2|"Por favor, selecione uma cor."|
|"Azul"|"Nenhum"|1|"Por favor, selecione um tamanho."|
|"Verde"|"G"|0|"Por favor, selecione a quantidade."|

Cenário: Resetar campos para o valor padrão
Dado que o usuário preencheu o campo "tamanho" e "cor"
E selecionou limpar campo
Quando clicar no botão "Limpar"
Então os campos devem ficar vazios
E voltar para a opção padrão
