# UC02-660014415B - Desenvolver Algoritmos

<details>
<summary>
    <a href="A1.por">Atividade 1</a>
</summary>

O dono de um conhecido restaurante gostaria de refinar seu sistema de sugestão de pratos. Com isso, é necessário que o sistema forneça sugestões de acordo com o perfil do cliente.

Observe que serão considerados dois parâmetros nessa análise:

- **se** o cliente é vegetariano
- **se** o cliente está em dieta.

Desenvolva um algoritmo utilizando o Portugol Studio instalado em sua máquina. Caso você não tenha baixado a ferramenta ainda, acesse o tópico Portugol Studio do conteúdo Algoritmos para obter mais informações.

O algoritmo deve fornecer sugestões de cardápio a seus clientes. O sistema deve solicitar ao usuário:

- nome do cliente
- vegetariano (“sim” ou “não”)
- dieta (“sim” ou “não”).

Após armazenar as respostas do usuário, deve seguir as seguintes regras para sugestões de pratos:

- **Para clientes em dieta e vegetarianos**: sugerir saladas
- **Para clientes em dieta e não vegetarianos**: sugerir frango grelhado
- **Para clientes sem dieta e vegetarianos**: sugerir macarrão
- **Para clientes sem dieta e não vegetarianos** sugerir feijoada

O sistema deve retornar o nome do cliente e a sugestão de prato.

Depois da exibição, deve perguntar ao usuário se ele deseja pagar em dinheiro ou cartão (“dinheiro” ou “cartão”). Se o cliente pagar em dinheiro, emita a mensagem `O cliente tem 15% de desconto`.

Deve ser exibida apenas a mensagem – **não é necessário realizar nenhum cálculo**.

> [!NOTE] Importante
> Utilize estruturas condicionais para desenvolver o algoritmo (`se`, `senão`, `senão se`) e seus operadores lógicos (`e` e `ou`).


</details>

<details>

<summary>
    <a href="A2.por">Atividade 2</a>
</summary>

Uma loja de jogos implementou uma nova regra de negócios: os clientes que gastam mais de R$ 100,00 em compras recebem o desconto especial do dia. Para automatizar esse processo e garantir a correta aplicação do desconto, a loja solicitou o desenvolvimento de um sistema que gerencie as vendas diárias e calcule o valor a ser pago por cada cliente, aplicando o desconto quando necessário.

Desenvolva um algoritmo utilizando o Portugol Studio instalado em sua máquina. Caso você não tenha baixado a ferramenta ainda, acesse o tópico Portugol Studio do conteúdo Algoritmos para obter mais informações.

O algoritmo deve perguntar ao usuário qual é o valor do desconto que será aplicado no dia e armazenar essa informação. Esse valor será utilizado posteriormente para calcular o desconto aplicado aos clientes que se qualificarem.

Em seguida, o sistema deve coletar os dados de seis clientes, registrando o nome de cada um e o valor gasto na loja. Utilize dois vetores diferentes (um do tipo cadeia e outro do tipo real) para garantir que as informações possam ser acessadas posteriormente.

Depois de coletar os valores para cada cliente, o código precisa verificar, para cada um deles, se o valor gasto é superior a R$ 100,00. Se for, o desconto do dia deve ser subtraído do valor total. Se o cliente não atingir o valor mínimo para o desconto, deverá pagar o valor total de sua compra sem desconto.

Após verificar se o desconto foi aplicado ou não, o sistema deve exibir o nome do cliente e o valor final que ele deve pagar.

Ao final, o sistema deve mostrar o total de dinheiro recebido pela loja no dia, somando todos os valores pagos pelos clientes. Também deve contabilizar quantos clientes receberam o desconto e exibir essa informação.

> [!NOTE] Importante
> Utilize estruturas de dados e de repetição para desenvolver o algoritmo. Considere que estruturas estudadas anteriormente também podem ser necessárias.

</details>