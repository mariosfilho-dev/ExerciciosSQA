Funcionalidade: Configurar Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o usuário está na pagina de configuração do produto

Esquema de Cenário: Selecione os campos sugeridos obrigatórios
Quando o preencher os campos COR <cor>,TAMANHO <tamanho> e QUANTIDADE <quantidade> não for selecionados 
E clicar em "Cadastrar" 
Então o sistema deve exibir a mensagem "<mensagem>"

Exemplos:
|Cor   | Tamanho |  Quantidade  | Mensagem |
|      |   "P"   |     10       |"Campo vazio!"|
|"Azul"|         |              |"Campo vazio!"|
|"Azul"|   "P"   |     10       |"Campo vazio!"|

Esquema de Cenário: Limitação de produtos
Quando a quantidade permitidos seja até quantidade "10" produtos
E a quantidade de produto sugerido seja ultrapassado 
Então sera exibida a mensagem "Erro: Permitido apenas 10 produtos." 

Exemplos:
|Cor   | Tamanho |  Quantidade  | Mensagem |
|"Azul"|   "P"   |     12       |"Erro: Permitido apenas 10 produtos."|

Esquema de Cenário: Validação de campos obrigatórios
Quando o usuário preencher os campos COR <cor>, TAMANHO <tamanho>, QUANTIDADE <quantidade>
E quando clicar "concluir"
Então o sistema vai exibir a mensagem "Valido"

Exemplos:
|Cor   | Tamanho | Quantidade | Mensagem  |
|"Azul"|   "P"   |     2      |  "Valido" |

Esquema de Cenário: Resetar campos
Quando o usuário querer apagar os itens TAMANHO<tamanho>, COR<cor> e QUANTIDADE<quantidade> 
E clicar no botão "Limpar"
Então o sistema deve limpar as seleções e voltar os campos para o valor padrão

