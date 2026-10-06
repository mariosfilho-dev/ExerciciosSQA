#Configuração 

Funcionalidade: Configurar Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Esquema de Cenário: Selecione cor, tamanho e quantidade obrigatórios
Dado que o usuário está na pagina de configuração do produto
E deixar "cor","tamanho" e "quantidade" com campo vazio
Quando o usuário for concluir para ser adicionado ao carrinho
Então o sistema exibirá a mensagem "Campo vazio, por favor preencher!"

Exemplos:
|Cor   | Tamanho | Quantidade | Mensagem |
|"Azul"|   "P"   |            |"Campo vazio, por favor preencher!"|

Esquema de Cenário: Limitação de produtos
Dado que o usuário está na pagina de produtos
E que a quantidade permitidos seja até 10 produtos
Quando a quantidade de produto sugerido seja ultrapassado    
Então sera exibida a mensagem "Erro: Permitido apenas 10 produtos." 

Exemplos:
|Cor   | Tamanho | Quantidade | Mensagem |
|"Azul"|   "P"   |            |"Erro: Permitido apenas 10 produtos."|

Esquema de Cenário: Validação de campos obrigatórios
Dado que que o usuário está na página inicial
E preenche o campos obrigatórios informados 
Quando cliclar para concluir 
Então o sistema reconhecerá e exibirá a mensagem "Valido"

Exemplos:
|Cor   | Tamanho | Quantidade | Mensagem  |
|"Azul"|   "P"   |     2      |  "Valido" |

Esquema de Cenário: Resetar campos
Dado que o cliente seleciona uma cor e um tamanho para o produto
Quando clicar no botão "Limpar"
Então o sistema deve limpar as seleções e voltar os campos para o valor padrão

Exemplos:
| Limpar | Limpar  |   Limpar   |
|  Cor   | Tamanho | Quantidade |
|        |         |            |
