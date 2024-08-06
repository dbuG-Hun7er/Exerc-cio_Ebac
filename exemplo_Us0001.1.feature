      Funcionalidade: Configuração de produto

      Contexto:
      Dado que estou na página de configuração de produto

      Cenário: Selecionar cor, tamanho e quantidade obrigatórios
      Quando eu seleciono a cor
      E eu seleciono o tamanho
      E eu seleciono a quantidade
      Então o produto deve ser configurado corretamente

      Cenário: Limite de produtos por venda
      Quando eu seleciono 11 produtos
      Então deve exibir uma mensagem de erro "Quantidade máxima permitida é 10"

      Cenário: Limpar seleção
      Quando eu seleciono a cor
      E eu seleciono o tamanho
      E eu seleciono a quantidade
      E eu clico no botão "limpar"
      Então a seleção deve voltar ao estado original

      Esquema do Cenário: Selecionar cor, tamanho e quantidade válidos
      Dado que eu selecionei a cor <cor>
      E selecionei o tamanho <tamanho>
      E selecionei a quantidade <quantidade>
      Quando eu clico no botão "adicionar ao carrinho"
      Então o produto deve ser adicionado ao carrinho

      Exemplos:
      | cor      | tamanho | quantidade |
      | vermelho | M       | 1          |
      | azul     | G       | 2          |
      | verde    | P       | 3          |
