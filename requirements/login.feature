Feature: Logim
Como um cliente
Quero poder acessar minha conta e me manter logado
Para que eu possa ver e responder enquetes de forma rápida

Cenário: Credenciais Válidas
Dado que o cliente informou credenciais Válidas
Quando solicitar para fazer login
Então o sistema deve enviar o usuário para a tela de pesquisas
E manter o usuário conectado

Cenário: Credenciais Inválidas
Dados que o cliente informou credenciais Inválidas
Quando colicitar para fazer login
Então o sistema deve retornar uma mensagem de erro