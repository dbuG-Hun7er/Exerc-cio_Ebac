Funcionalidade: Conclusão de cadastro

  Contexto:
    Dado que estou na página de cadastro da EBAC-SHOP

  Cenário: Cadastro com todos os dados obrigatórios preenchidos
    Quando eu preencho os campos obrigatórios: nome "João", sobrenome "Silva", país "Brasil", rua "Rua Exemplo, 123", cidade "São Paulo", CEP "12345-678", telefone "11999999999", e-mail "joao.silva@example.com"
    E Clico no botão "cadastrar"
    Então o cadastro deve ser realizado com sucesso

  Cenário: Falta de preenchimento de campos obrigatórios
    Quando o campo nome é deixado em branco ae clico no botão "cadastrar"
    Então deve exibir uma mensagem "Preencha todos os campos obrigatórios"

  Cenário: Dados obrigatórios ausentes
    Quando insiro um e-mail  com inválido "email.loko@inválido" ae clico no botão "cadastrar"
    Então deve exibir uma mensagem "E-mail com inválido"

  Cenário: Preenchimento de todos os campos obrigatórios marcados com asterisco
    Quando todos os campos marcados com asterisco são preenchidos corretamente ae clico no botão "cadastrar"
    Então o sistema deve permitir o cadastro e exibir uma confirmação

    
