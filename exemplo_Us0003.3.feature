

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
