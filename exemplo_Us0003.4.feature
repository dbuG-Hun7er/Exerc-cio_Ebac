Funcionalidade: Conclusão de cadastro

  Contexto:
    Dado que estou na página de cadastro da EBAC-SHOP

  Esquema do Cenário: Cadastro com diferentes combinações de dados
    Quando eu insiro o nome "<nome>", o sobrenome "<sobrenome>", o país "<país>", a rua "<rua>", a cidade "<cidade>", o CEP "<CEP>", o telefone "<telefone>" e o endereço de e-mail "<email>"
    E clico no botão "cadastrar"
    Então deve exibir a mensagem "<mensagem>"

    Exemplos:
      | nome  | sobrenome | país  | rua              | cidade    | CEP       | telefone     | email                  | mensagem                                      |
      | João  | Silva     | Brasil| Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999  | joao.silva@example.com | Cadastro realizado com sucesso                |
      | João  | Silva     | Brasil| Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999  | joao.silva@invalido    | Formato de e-mail inválido                    |
      | João  |           | Brasil| Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999  | joao.silva@example.com | Preencha todos os campos obrigatórios         |
      | João  | Silva     | Brasil| Rua Exemplo, 123 | São Paulo | 12345-678 | telefone_invalido | joao.silva@example.com | Formato de telefone inválido                  |
      |       | Silva     | Brasil| Rua Exemplo, 123 | São Paulo | 12345-678 | 11999999999  | joao.silva@example.com | Preencha todos os campos obrigatórios         |





