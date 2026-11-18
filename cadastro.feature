            #language:pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer e concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu preencher todos os campos obrigatórios marcados com asterisco
            E clicar no botão "Finalizar compra"
            Então devo ser redirecionado para a etapa final de compra

            Esquema do Cenário: Email com formato inválido
            Quando eu preencher os demais campos obrigatórios marcados com asterisco
            E inserir o email <email_invalido>
            E clicar no botão "Finalizar compra"
            Então deve exibir a mensagem de erro "Por favor insira um email com formato válido"

            Exemplos:
            | email_invalido |
            | @fulano        |
            | fulano.com.br  |
            | fulano@ebac    |

            Esquema do Cenário: Tentar cadastrar com campos obrigatórios vazios
            Quando eu não preencher algum <campo> obrigatório marcado com asterisco
            E clicar no botão "Finalizar compra"
            Então o sistema deve exibir uma <mensagem> de alerta

            Exemplos:
            | campo              | mensagem                                        |
            | Nome               | Por favor preencha o campo "Nome"               |
            | Sobrenome          | Por favor preencha o campo "Sobrenome"          |
            | País               | Por favor preencha o campo "País"               |
            | Endereço           | Por favor preencha o campo "Endereço"           |
            | Cidade             | Por favor preencha o campo "Cidade"             |
            | CEP                | Por favor preencha o campo "CEP"                |
            | Telefone           | Por favor preencha o campo "Telefone"           |
            | Endereço de E-mail | Por favor preencha o campo "Endereço de E-mail" |

