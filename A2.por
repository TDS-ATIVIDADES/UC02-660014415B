programa 
{
    inclua biblioteca Tipos
    const inteiro NUM_CLIENTES = 6
    funcao inicio()
    {
        cadeia nomes[NUM_CLIENTES]
        real gastos[NUM_CLIENTES]
        real desconto = 0
        cadeia descontoDigitado = ""
        real pago = 0
        real total_recebido = 0
        inteiro clientes_com_desconto = 0
        
        escreva("Informe o valor do desconto do dia: ")
        leia(descontoDigitado)
        desconto = Tipos.cadeia_para_real(descontoDigitado)

        // Coleta de dados dos 6 clientes
        para (inteiro i = 0; i < NUM_CLIENTES; i++)
        {
            escreva("Nome do cliente ", i + 1, "/", NUM_CLIENTES, ": ")
            leia(nomes[i])
            escreva("Valor gasto por ", nomes[i], ": ")
            leia(gastos[i])
            escreva("\n")
        }

        total_recebido = 0
        clientes_com_desconto = 0

        // Processamento: aplicar desconto quando gasto > 100
        para (inteiro i = 0; i < NUM_CLIENTES; i++)
        {
            se (gastos[i] > 100) {
                escreva("Cliente ", nomes[i], " terá desconto\n")
                pago = gastos[i] - desconto
                clientes_com_desconto = clientes_com_desconto + 1
            } senao {
                escreva("Cliente ", nomes[i], " não terá desconto\n")
                pago = gastos[i]
            }
            total_recebido = total_recebido + pago
            escreva("Cliente: ", nomes[i], " - Valor a pagar: ", pago, "\n\n")
        }

        escreva("\nTotal recebido: ", total_recebido, "\n")
        escreva("Clientes que receberam desconto: ", clientes_com_desconto, "\n")
    }
}
