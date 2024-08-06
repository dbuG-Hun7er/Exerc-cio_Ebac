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
