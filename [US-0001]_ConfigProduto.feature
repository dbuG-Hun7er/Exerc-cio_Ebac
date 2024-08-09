            #Exercício Gherkin Lucas-aluno-Ebac

            #Exercício Gherkin Us0001
            #deve-se seguir os criterios de aceitação
            # languege: pt

            Funcionalidade: configuração de produto

            Contexto:
            Dado que estou na página de seleção de produto

            Cenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecino a cor, o tamanho e quantidade
            Então o produto devem ser inserido ao carrinho

            Esquema do Cenário: Selecionar cor, tamanho e quantidade válidos
            Quando eu selecino a <cor>, o <tamanho>, ea <quantidade>
            Então o produto devem ser inserido ao carrinho

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | XS      | 10         |
            | Orange | S       | 9          |
            | Red    | M       | 8          |
            | Orange | KL      | 1          |


            Cenario: limite de produto dor venda
            Quando eu selecinar 11 produtos
            Então deverá aparecer a mensagem de "Apenas de 10 produtos por venda"

            Cenário: Limpar seleção
            Quando eu seleciono a cor, o tamanho e a quantidade
            E clico no botão "limpar"
            Então a seleção deve voltar ao estado original

            





