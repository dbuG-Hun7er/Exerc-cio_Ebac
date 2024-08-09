#Exercício Gherkin Lucas-aluno-Ebac

            #Exercício Gherkin Us0003
            #deve-se seguir os criterios de aceitação
            # languege: pt

           Funcionalidade: Conclusão de cadastro

            Contexto:
            Dado que estou na página de cadastro da EBAC-SHOP 

            Cenário: Cadastro com todos os dados obrigatórios
            Quando eu insiro o nome "Lucas", o sobrenome "Lima", o país "Brasil", a rua "Rua enoisprofe, 123", a cidade "São Paulo", o CEP "18345-678", o telefone "11 99874512" e o endereço de e-mail "joao.silva@example.com"
            E clico no botão "cadastrar"
            Então devo ser cadastrado com sucesso

            Cenário:  Dados obrigatórios ausentes
            Quando o campo nome é deixado em branco ae clico no botão "cadastrar"
            Então deve exibir uma mensagem "Preencha todos os campos obrigatórios"

            Cenário:  E-mail com formato inválido
            Quando insiro um e-mail com formado inválido "email.loko@inválido" ae clico no botão "cadastrar"
            Então deve exibir uma mensagem "E-mail com inválido"
            
            
            Esquema do Cenário: Cadastro com diferentes combinações de dados
            Quando eu insiro o <nome>, o <sobrenome>, o <pais>, a <rua>, a <cidade>, o <CEP>, o <telefone> e o endereço de <email>
            E clico no botão "cadastrar"
            Então deve exibir a mensagem <mensagem>

              Exemplos:
            | nome    | sobrenome | país       | rua               | cidade      | CEP        | telefone           | email                    | mensagem                                      |
            | "lucas" | "Lima"    | "Colombia" | "Rua Exemplo, 113"| "Medellín"  | "050005"   | "45874551222"      | "lucas.Lima@example.com" | "Cadastro realizado com sucesso"              |
            | "João"  | "Silva"   | "Russia"   | "Rua Exemplo, 831"| "Tuva"      | "103426"   | "15878746121"      | "joao.silva@invalido"    | "Formato de e-mail inválido"                  |
            | "João"  |           | "Brasil"   | "Rua Exemplo, 122"| "São Paulo" |"18759-254" | "119980206841"     | "joao.silva@example.com" | "Preencha todos os campos obrigatórios"       |
            | "João"  | "Pedro"   | "Brasil"   | "Rua Exemplo, 891"| "São Carlos"|"18557-685" | "telefone_invalido"| "joao.pedro@example.com" | "Formato de telefone inválido"                |
            |         | "Pão"     | "Argentina"| "Rua Exemplo, 751"| "Rosário"   |"65206-000" | "11411875859"      | "pedrao.pao@example.com" | "Preencha todos os campos obrigatórios"       |
