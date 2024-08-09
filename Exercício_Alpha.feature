            #Exercício Gherkin Lucas-aluno-Ebac

            #Exercício Gherkin Us0001
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


            #Exercício Gherkin Us0002

            Funcionalidade: Autenticação na plataforma

            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando eu insiro o nome de usuário "usuario_valido"
            E eu insiro a senha "senha_valida"
            E clico no botão "login"
            Então devo ser direcionado para a tela de pedidos

            Cenário: Login com nome de usuário inválido
            Quando eu insiro o nome de usuário "usuario_invalido"
            E eu insiro a senha "senha_valida"
            E clico no botão "login"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            Quando eu insiro o nome de usuário "usuario_valido"
            E eu insiro a senha "senha_invalida"
            E clico no botão "login"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


            #Exercício Gherkin Us0003

            
            Funcionalidade: Conclusão de cadastro

            Contexto:
            Dado que estou na página de cadastro da EBAC-SHOP

            Esquema do Cenário: Cadastro com diferentes combinações de dados
            Quando eu insiro os seguintes dados que são obrigatórios:
            | nome   | sobrenome   | país   | rua   | cidade   | CEP   | telefone   | email   |
            | <nome> | <sobrenome> | <país> | <rua> | <cidade> | <CEP> | <telefone> | <email> |
            E clico no botão "cadastrar"
            Então deve exibir a mensagem "<mensagem>"

            Exemplos:
            | nome    | sobrenome       | país   | rua              | cidade    | CEP       | telefone          | email                  | mensagem                              |
            | roberto | ernesto         | Brasil | Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999       | joao.silva@example.com | Cadastro realizado com sucesso        |
            | João    | eo pé de feijão | Brasil | Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999       | joao.silva@invalido    | Formato de e-mail inválido            |
            |         | silva           | Brasil | Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999       | joao.silva@example.com | Preencha todos os campos obrigatórios |
            | jacinto | cabeçao         | Brasil | Rua Exemplo, 123 | São Paulo | 12345-678 | telefone_invalido | joao.silva@example.com | Formato de telefone inválido          |
