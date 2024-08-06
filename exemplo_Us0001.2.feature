            #Exercício Gherkin Lucas-aluno-Ebac
            # language: pt
            Funcionalidade: Configuração de produto

            Contexto:
            Dado que estou na página de seleção do produto

            Cenário: Selecionar cor, tamanho e quantidade obrigatórios
            Quando eu seleciono a cor, o tamanho e a quantidade
            Então o produto deve ser configurado corretamente

            Cenário: Limite de produtos por venda
            Quando eu seleciono 11 produtos
            Então deve exibir uma mensagem de erro "Quantidade máxima permitida é 10"

            Cenário: Limpar seleção
            Quando eu seleciono a cor, o tamanho e a quantidade
            E clico no botão "limpar"
            Então a seleção deve voltar ao estado original

            Esquema do Cenário: Selecionar cor, tamanho e quantidade válidos
            Dado que eu selecionei a cor <cor>, o tamanho <tamanho> e a quantidade <quantidade>
            Quando eu clico no botão "adicionar ao carrinho"
            Então o produto deve ser adicionado ao carrinho

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | XS      | 7          |
            | Orange | S       | 3          |
            | Red    | M       | 5          |

