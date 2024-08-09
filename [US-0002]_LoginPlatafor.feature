#Exercício Gherkin Lucas-aluno-Ebac

            #Exercício Gherkin Us0002
            #deve-se seguir os criterios de aceitação
            # languege: pt

            Funcionalidade: Authenticação na plataforma

            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando eu digitar um "usuario_válido" e a "senha_válida" 
            Então devo ser direcionado para o dashboard

            Cenário: Login com dados invávido
            Quando eu digitar um "usuario_invávido" e a "senha_invávido"
            Então deve exibir uma mensagem  de alerta "Usuário ou senha inválidos"

            
            Esquema do Cenario: Login na plataforma
            # Cenário: Login com dados válidos 
            Quando eu digitar o <usuario> e a <senha>
            Então devo ver a mensagem <mensagem> de boas vindas 

            Exemplos:
            | usuario           | senha  | mensagem   |
            | jose.lq@valido    | 123456 | "Olá Jose" |
            | pedrao.pao@valido | 124156 | "Olá Pedro"|
            | carla.b@valido    | 18546  | "Olá Carla"|
