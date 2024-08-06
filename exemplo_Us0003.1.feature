Funcionalidade: Conclusão de cadastro

  Contexto:
    Dado que estou na página de cadastro da EBAC-SHOP

  Cenário: Cadastro com todos os dados obrigatórios
    Quando eu insiro o nome "João"
    E insiro o sobrenome "Silva"
    E insiro o país "Brasil"
    E insiro a rua "Rua Exemplo, 123"
    E insiro a cidade "São Paulo"
    E insiro o CEP "12345-678"
    E insiro o telefone "11999999999"
    E insiro o endereço de e-mail "joao.silva@example.com"
    E clico no botão "cadastrar"
    Então devo ser cadastrado com sucesso

  Cenário: Cadastro com e-mail inválido
    Quando eu insiro o nome "João"
    E insiro o sobrenome "Silva"
    E insiro o país "Brasil"
    E insiro a rua "Rua Exemplo, 123"
    E insiro a cidade "São Paulo"
    E insiro o CEP "12345-678"
    E insiro o telefone "11999999999"
    E insiro o endereço de e-mail "joao.silva@invalido"
    E clico no botão "cadastrar"
    Então deve exibir uma mensagem de erro "Formato de e-mail inválido"

  Cenário: Cadastro com campos obrigatórios vazios
    Quando eu não preencho todos os campos obrigatórios
    E clico no botão "cadastrar"
    Então deve exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"
