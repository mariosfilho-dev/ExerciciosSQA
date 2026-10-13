Funcionalidade: Configurar Produto na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o usuário está na pagina de configuração do produto

Cenário: Selecione os campos sugeridos obrigatórios
Quando preencher os campos cor<Cor>,tamanho <Tamanho> e quantidade <Quantidade> e não selecionar 
E clicar em "Cadastrar" 
Então o sistema deve exibir a mensagem "<Mensagem>"

Exemplos:
|Cor   | Tamanho |  Quantidade  | Mensagem |
|      |   "P"   |     10       |"Campo vazio!"|
|"Azul"|         |              |"Campo vazio!"|
|"Azul"|   "P"   |     10       |"Campo vazio!"|

Cenário: Limitação de produtos
Quando a quantidade permitidos seja até "10" produtos
E a quantidade de produto sugerido seja ultrapassado 
Então sera exibida a mensagem "Erro: Permitido apenas 10 produtos." 

Cenário: Validação de campos obrigatórios
Quando o usuário preencher os campos obrigatórios
E clicar em "concluir"
Então o sistema vai exibir a mensagem "Valido"

Cenário: Resetar campos
Quando o usuário deseja apagar os itens 
E clicar no botão "Limpar"
Então o sistema deve limpar as seleções e voltar os campos para o valor padrão

