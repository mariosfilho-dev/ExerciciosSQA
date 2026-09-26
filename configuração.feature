#Configuração 

Funcionalidade: Configurar Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Selecões de cor, tamanho e quantidade devem ser obrigatórios
Dado que a pagina de configuração do produto
Quando o cliente não selecionar o "tamanho" , "cor" e "quantidade" obrigatórios
Então será exibida a mensagem "Seleção obrigatório"

Cenário: Limitação de produtos
Dado que a quantidade for permitidos até 10 produtos
Quando for ultrapassado o limite de quantidades de produtos sujeridos   
Então sera exibida a mensagem "Erro: Permitido apenas 10 produtos por venda." 

Exemplos:
|cor|tamanho|quantidade|mensagem|
|"Azul"|"P"|1|"Produto adicionado ao carrinho com sucesso!"|
|"Preto"|"M"|10|"Produto adicionado ao carrinho com sucesso!"|
|"Preto"|"G"|11|"Erro: Permitido apenas 10 produtos por venda."|

Cenário: Validação de campos obrigatórios
Dado que a página inicial no site  
Quando o cliente preencher o campos obrigatórios e ao cliclar para concluir  
Então sera exibida a mensagem "Valido"

Exemplos:
|cor|tamanho|quantidade|mensagem|
|"Azul"|"M"|2|"Valido"|

Cenário: Resetar campos para o valor padrão
Dado que o usuário preencheu o campo "tamanho" e "cor" e precisou limpar o campo preechido
Quando ele for clicar no botão "Limpar"
Então o sistema reconhecera e limpará os campos prenchidos e voltará para o valor padrão
