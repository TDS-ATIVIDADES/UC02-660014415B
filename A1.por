programa 
{
    funcao inicio()
    {
        cadeia nome = ""
        escreva("Nome do cliente: ")
        leia(nome)
        
        cadeia vegetariano = ""
        escreva("Vegetariano (sim/nao): ")
        leia(vegetariano)
        
        cadeia dieta = ""
        escreva("Em dieta (sim/nao): ")
        leia(dieta)
                
        cadeia sugestao = ""
        se (dieta == "sim" e vegetariano == "sim") {
            sugestao = "Saladas"
        } senao {
            se (dieta == "sim" e vegetariano == "nao") {
                sugestao = "Frango grelhado"
            } senao {
                se (dieta == "nao" e vegetariano == "sim") {
                    sugestao = "Macarrao"
                } senao {
                    sugestao = "Feijoada"
                }
            }
        }
        
        escreva("\n")
        escreva("Cliente: " + nome + "\n")
        escreva("Sugestao: " + sugestao + "\n")
        
        cadeia pagamento = ""
        escreva("Forma de pagamento (dinheiro/cartao): ")
        leia(pagamento)
        se (pagamento == "dinheiro") {
            escreva("O cliente tem 15% de desconto\n")
        }
    }
}
