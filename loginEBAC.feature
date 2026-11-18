            #language:pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticar usuários
            Quando eu digitar o usuario "joao@fulano.com.br", a senha "algumacoisa123"
            E clicar no botão de "Login"
            Então deve ser redirecionado para a tela de checkout

            Esquema do Cenário: Tentar validar usuários inválidos
            Quando eu digitar o <usuario>, a <senha>
            E clicar no botão de "Login"
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | usuario             | senha          | mensagem                   |
            | joao@fulano.com.br  | 123            | Usuário ou senha inválidos |
            | fulana@fulana       | algumacoisa123 | Usuário ou senha inválidos |
            | emily@santos.com.br | teste1234      | Usuário não cadastrado     |
            | vitor@santos.com.br | teste123       | Usuário não cadastrado     |


