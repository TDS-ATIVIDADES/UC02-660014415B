# Referência da Linguagem Portugol

Baseada na documentação oficial e exemplos do **Portugol Studio** (UNIVALI/LITE).

---

## Estrutura do Programa

```
programa
{
    inclua biblioteca <Nome> [--> <apelido>]

    const <tipo> <NOME> = <valor>

    funcao <tipo> <nome>(<parametros>)
    {
        <instrucoes>
    }

    funcao inicio()
    {
        <instrucoes>
    }
}
```

- `programa { }` é obrigatório.
- `funcao inicio()` é obrigatória (ponto de entrada).
- Inclusões de bibliotecas vêm antes de qualquer declaração.
- Declarações de funções só são permitidas dentro de `programa`.

```portugol
programa
{
    funcao inicio()
    {
        escreva("Ola, mundo!")
    }
}
```

---

## Tipos de Dados

| Tipo | Descrição | Exemplo |
|------|-----------|---------|
| `inteiro` | Números inteiros | `inteiro idade = 25` |
| `real` | Números com ponto flutuante | `real altura = 1.79` |
| `caracter` | Um único caractere (aspas simples) | `caracter letra = 'A'` |
| `cadeia` | Texto (aspas duplas) | `cadeia nome = "Joao"` |
| `logico` | `verdadeiro` ou `falso` | `logico aprovado = verdadeiro` |
| `vazio` | Tipo de retorno de função sem retorno | `funcao vazio imprime_linha()` |

---

## Declarações

### Variáveis

```portugol
caracter nome_variavel
inteiro variavel_inicializada = 42
real nome_variavel2
logico nome_variavel3
cadeia var1, var2, var3, var4
logico var4, var5, var6
```

```portugol
programa
{
    inteiro variavel        // global

    funcao inicio()
    {
        inteiro outra_variavel   // local
        real altura = 1.79
        cadeia frase = "Isso é uma variável do tipo cadeia"
        caracter inicial = 'P'
        logico exemplo = verdadeiro
        escreva(altura)
    }
}
```

### Constantes

```portugol
const inteiro NOME_DA_CONSTANTE = 3
const real NOME_DA_CONSTANTE2 = 45
```

Por convenção, nomes de constantes em MAIÚSCULO.

```portugol
programa
{
    const real ACELERACAO_GRAVIDADE = 9.78

    funcao inicio()
    {
        const caracter VOGAIS[5] = {'a','e','i','o','u'}
        const inteiro TECLADO_NUMERICO[][] = {{1,2,3},{4,5,6},{7,8,9}}
    }
}
```

### Vetores

```portugol
inteiro vetor[5]
caracter vetor2[200]
real vetor3[2] = {1.4, 2.5}
logico vetor4[4] = {verdadeiro, falso, verdadeiro, verdadeiro}
cadeia vetor5[] = {"Questão", "Fundamental"}

vetor5[0] = "Pergunta"    // atribuição por índice
```

- Índices começam em 0.

```portugol
programa
{
    funcao inicio()
    {
        inteiro vetor[5] = {15, 22, 8, 10, 11}
        escreva(vetor[0])       // 15
        escreva(vetor[4])       // 11

        real outro_vetor[10]
        caracter nome[] = {'P','o','r','t','u','g','o','l'}
    }
}
```

### Matrizes

```portugol
real nome_da_variavel[5][3]
nome_da_variavel[0][1] = 2.5
```

```portugol
programa
{
    funcao inicio()
    {
        inteiro matriz[2][2] = {{15,22},{10,11}}
        matriz[0][1] = -1
        escreva(matriz[0][0])   // 15

        real outra_matriz[2][4]

        caracter jogo_velha[][] = {{'X','O','X'},
                                   {'O','X','O'},
                                   {' ',' ','X'}}
    }
}
```

### Funções

```portugol
funcao real nome_da_funcao(inteiro parametro1, real parametro2)
{
    retorne parametro1 * parametro2
}

funcao inteiro nome_da_funcao2()
{
    retorne 1
}

funcao nome_da_funcao3(cadeia &parametro)   // passagem por referência
{
    parametro = "Novo Valor"
}
```

- Se o tipo de retorno for omitido, assume `vazio`.
- `&` antes do parâmetro = passagem por referência.
- `retorne` obrigatório se tipo ≠ `vazio`.

```portugol
programa
{
    funcao vazio imprime_linha()
    {
        escreva("\n-----------------------------\n")
    }

    funcao real media(inteiro m1, inteiro m2, inteiro m3)
    {
        retorne (m1 * 2 + m2 * 3 + m3 * 8) / 13.0
    }

    funcao zera_valor(inteiro &valor)
    {
        valor = 0
    }

    funcao logico verifica_par(inteiro num)
    {
        se (num % 2 != 0)
        {
            retorne falso
        }
        retorne verdadeiro
    }

    funcao inicio()
    {
        escreva(media(4, 9, 8))
        imprime_linha()
        escreva(verifica_par(3))
    }
}
```

---

## Entrada e Saída

### Escreva

Exibe dados no console.

```portugol
escreva("Escreva o texto a ser digitado aqui")
```

```portugol
programa
{
    funcao inicio()
    {
        inteiro variavel = 5
        escreva("Escreva um texto aqui.\n")
        escreva(variavel, "\n")
        escreva(variavel + variavel, "\n")
        escreva("O valor da variável é: ", variavel)
        escreva("Texto com\n", "quebra-linha")
        escreva("Texto com\t tabulação")
    }
}
```

- Use `\n` para quebra de linha, `\t` para tabulação.
- Múltiplos argumentos separados por vírgula.

### Leia

Lê dados do teclado.

```portugol
inteiro x
cadeia y
real z
leia(x)
leia(y, z)
```

```portugol
programa
{
    funcao inicio()
    {
        inteiro idade
        real salario, nota1, nota2, nota3
        cadeia nome, sobrenome

        escreva("Informe a sua idade: ")
        leia(idade)
        escreva("Informe seu salario: ")
        leia(salario)
        escreva("Informe o seu nome e sobrenome: ")
        leia(nome, sobrenome)
        leia(nota1, nota2, nota3)

        escreva("Seu nome é: " + nome + " " + sobrenome + "\n")
        escreva("Você tem " + idade + " anos e ganha de salario " + salario + "\n")
    }
}
```

### Limpa

Limpa o console.

```portugol
limpa()
```

```portugol
programa
{
    funcao inicio()
    {
        cadeia nome
        escreva("Qual é o seu nome?\n")
        leia(nome)
        limpa()
        escreva("Olá " + nome)
    }
}
```

---

## Expressões e Operadores

### Atribuição

```portugol
variavel = 6
variavel = variavel2
variavel = 6 + 4 / variavel2
leia(variavel)
```

Operadores de atribuição compostos:

| Operador | Equivalente |
|----------|-------------|
| `x += y` | `x = x + y` |
| `x -= y` | `x = x - y` |
| `x *= y` | `x = x * y` |
| `x /= y` | `x = x / y` |
| `x %= y` | `x = x % y` |
| `x &= y` | `x = x & y` |
| `x ^= y` | `x = x ^ y` |
| `x |= y` | `x = x | y` |
| `x++` | `x = x + 1` |
| `x--` | `x = x - 1` |

### Operadores Aritméticos

| Operação | Símbolo | Prioridade |
|----------|---------|------------|
| Adição | `+` | 1 |
| Subtração | `-` | 1 |
| Multiplicação | `*` | 2 |
| Divisão | `/` | 2 |
| Módulo (resto) | `%` | 2 |

```portugol
escreva(1 + 5)
real numero = 50 + 30
se (20 + 40 < 70) { ... }
```

### Operadores Relacionais

| Operação | Símbolo |
|----------|---------|
| Maior | `>` |
| Menor | `<` |
| Maior ou igual | `>=` |
| Menor ou igual | `<=` |
| Igual | `==` |
| Diferente | `!=` |

### Operadores Lógicos

| Operador | Prioridade | Descrição |
|----------|------------|-----------|
| `nao` | 3 (maior) | Negação |
| `e` | 2 | Conjunção (E) |
| `ou` | 1 (menor) | Disjunção (OU) |

```portugol
se (5 > 4 e 6 == 6) { ... }
logico saida = 5 > 3 e 4 < 5 e 6 < 7
se (nao falso) { ... }
enquanto (falso ou 5 > 4) { ... }
```

### Operadores Bitwise

| Operação | Símbolo |
|----------|---------|
| AND | `&` |
| OR | `|` |
| XOR | `^` |
| NOT | `~` |
| Shift esquerda | `<<` |
| Shift direita | `>>` |

```portugol
inteiro resultado = 5 & 3    // 0101 & 0011 = 0001 (1)
inteiro resultado = 5 | 3    // 0101 | 0011 = 0111 (7)
inteiro resultado = 5 ^ 3    // 0101 ^ 0011 = 0110 (6)
inteiro resultado = ~7       // ~0111 = 1000 (8)
inteiro resultado = 23 << 1  // 46
inteiro resultado = -105 >> 1 // -53
```

---

## Estruturas de Controle

### Desvios Condicionais

#### se

```portugol
logico condicao = verdadeiro
se (condicao)
{
    // executa se verdadeiro
}

inteiro x = 5
se (x > 3)
{
    // executa se verdadeiro
}
```

```portugol
programa
{
    funcao inicio()
    {
        inteiro num
        escreva("Digite um número: ")
        leia(num)
        se (num == 0)
        {
            escreva("O número digitado é 0")
        }
    }
}
```

#### se-senao

```portugol
logico condicao = falso
se (condicao)
{
    // executa se verdadeiro
}
senao
{
    // executa se falso
}
```

```portugol
programa
{
    funcao inicio()
    {
        inteiro hora
        escreva("Digite a hora: ")
        leia(hora)
        se (hora >= 6 e hora <= 18)
        {
            escreva("É dia")
        }
        senao
        {
            escreva("É noite")
        }
    }
}
```

#### se-senao se

```portugol
logico condicao = falso
logico condicao2 = verdadeiro
se (condicao)
{
    // executa se verdadeiro
}
senao se (condicao2)
{
    // executa se anterior falso e este verdadeiro
}
```

```portugol
programa
{
    funcao inicio()
    {
        real nota
        leia(nota)
        se (nota >= 9)
        {
            escreva("O aluno teve um desempenho muito bom na prova")
        }
        senao se (nota >= 7)
        {
            escreva("O aluno teve um desempenho bom na prova")
        }
        senao se (nota >= 6)
        {
            escreva("O aluno teve um desempenho razoável na prova")
        }
        senao
        {
            escreva("O aluno teve um desempenho mau na prova")
        }
    }
}
```

#### escolha-caso

```portugol
inteiro numero
leia(numero)
escolha(numero)
{
    caso 1:
        // instruções
        pare
    caso 2:
        // instruções
        pare
    caso 50:
        // instruções
        pare
    caso contrario:
        // instruções (opcional)
}
```

- `pare` interrompe a execução do caso; sem ele, executa os casos seguintes.
- `caso contrario` é opcional.

```portugol
programa
{
    funcao inicio()
    {
        inteiro valor = 1
        escolha(valor)
        {
            caso 0:
                escreva("o valor é igual a 0")
                pare
            caso 1:
                escreva("o valor é igual a 1")
                pare
            caso 2:
                escreva("o valor é igual a 2")
                pare
            caso contrario:
                escreva("o valor não é igual a 0, 1 ou 2")
        }
    }
}
```

### Laços de Repetição

#### enquanto (pré-testado)

```portugol
logico condicao = verdadeiro
enquanto (condicao)
{
    // executa enquanto a condição for verdadeira
}
```

```portugol
programa
{
    funcao inicio()
    {
        caracter parar = 'N'
        enquanto (parar != 'S')
        {
            escreva("Deseja parar o laço? (S/N)")
            leia(parar)
        }
    }
}
```

#### faca-enquanto (pós-testado)

Executa pelo menos uma vez.

```portugol
logico condicao = verdadeiro
faca
{
    // executa pelo menos uma vez
} enquanto (condicao)
```

```portugol
programa
{
    funcao inicio()
    {
        real aresta, area
        faca
        {
            escreva("Informe o valor da aresta: ")
            leia(aresta)
        } enquanto (aresta <= 0)

        area = aresta * aresta
        escreva("A área é: ", area)
    }
}
```

#### para (com variável de controle)

```portugol
para (inteiro i = 0; i < 8; i++)
{
    // código a executar enquanto a condição for satisfeita
}
```

```portugol
programa
{
    funcao inicio()
    {
        inteiro tab
        para (inteiro c = 1; c <= 10; c++)
        {
            tab = c * 3
            escreva("3 x ", c, " = ", tab, "\n")
        }
    }
}
```

---

## Bibliotecas

```portugol
inclua biblioteca Mouse
inclua biblioteca Graficos --> g
```

Para usar: `Nome.recurso()` ou `apelido.recurso()`.

```portugol
programa
{
    inclua biblioteca Matematica
    inclua biblioteca Texto --> t

    funcao inicio()
    {
        real resultado
        resultado = Matematica.arredondar(Matematica.PI, 5)
        escreva(resultado)
        escreva(t.caixa_alta("texto"))
    }
}
```

Bibliotecas disponíveis: `Arquivos`, `Graficos`, `Matematica`, `Mouse`, `Sons`, `Teclado`, `Texto`, `Tipos`, `Util`.

---

## Operadores de Concatenação

Use `+` para concatenar cadeias e variáveis em `escreva`:

```portugol
escreva("Seu nome é: " + nome + " " + sobrenome + "\n")
```
