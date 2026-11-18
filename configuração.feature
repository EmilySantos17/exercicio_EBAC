            #language:pt

            Funcionalidade: Configuração de produto
            Como cliente da EBAC Shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto na plataforma da EBAC Shop

            Esquema do Cenário: Validar múltiplas escolhas com obrigatoriedade de seleção
            Quando eu selecionar a "<cor>"
            E selecionar o "<tamanho>"
            E definir a "<quantidade>"
            E clicar no botão "Inserir no carrinho"
            Então o sistema deve exibir a "<mensagem>"

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                          |
            | azul     | PP      | 1          | Produto adicionado com sucesso    |
            | laranja  | P       | 2          | Produto adicionado com sucesso    |
            | vermelho | M       | 3          | Produto adicionado com sucesso    |
            |          | G       | 4          | Por favor selecione a cor.        |
            | laranja  |         | 5          | Por favor selecione o tamanho.    |
            | vermelho | GG      |            | Por favor selecione a quantidade. |

Cenário: Tentar adicionar uma quantidade maior que o permitido
Quando eu selecionar a cor "<azul>"
E selecionar o tamanho "<G>"
E definir a quantidade "<11>"
E clicar no botão "Inserir no carrinho"
Então o sistema deve exibir uma mensagem de alerta: "Apenas 10 produtos permitidos por venda."

Cenário: Limpar as configurações do produto
Quando eu selecionar a cor "<laranja>"
E selecionar o tamanho "<G>"
E definir a quantidade "<3>"
E clicar no botão "Limpar"
Então as seleções de cor e tamanho devem ficar vazias
E a quantidade deve voltar ao valor inicial padrão

