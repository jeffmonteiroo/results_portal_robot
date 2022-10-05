*** Settings ***

Resource        ../resources/base.robot
Resource        ../resources/BDDpt-br.robot
Resource        ../resources/ResourceBdd.robot
Resource        ../resources/helpers.robot


Test Setup      Open Session        
Test Teardown   Close Session

*** Test Cases ***
Cenário 01: Realizar o login do usuário tipo médico
    [TAGS]              001
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu insiro o meu e-mail
    E a minha senha
    E clico em Autenticar
    Então o login é feito com sucesso

Cenário 02: Realizar o login do usuário tipo convênio
    [TAGS]              002
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu insiro o meu usuário do tipo convênio
    E a minha senha
    E clico em Autenticar
    Então o login é feito com sucesso

Cenário 03: Realizar o login do usuário tipo categoria
    [TAGS]              003
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu insiro o meu usuário do tipo categoria
    E a minha senha
    E clico em Autenticar
    Então o login é feito com sucesso

Cenário 04: Realizar o login do usuário tipo procedência
    [TAGS]              004
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu insiro o meu usuário do tipo procedência
    E a minha senha
    E clico em Autenticar
    Então o login é feito com sucesso

Cenário 05: Validar login com os campos usuário e senha em branco
    [TAGS]              005
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu clico em autenticar sem informar o usuário e senha
    Então a mensagem "Informe usuário e senha" é exibida

Cenário 06: Validar login com o campo usuário em branco.
    [TAGS]              006
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu clico em autenticar com o campo usuário em branco
    Então a mensagem "Informe usuário e senha" é exibida

Cenário 07: Validar login com o campo senha em branco.
    [TAGS]              007
    Dado que eu esteja na tela de login do Portal de Resultados
    Quando eu clico em autenticar com o campo senha em branco
    Então a mensagem "Informe usuário e senha" é exibida

Cenário 08: Validar login de usuário inexistente
    [TAGS]              008
    Dado que eu esteja na tela de login do Portal de Resultados
    E insiro um usuário que não existe na base de dados
    Quando clico em autenticar
    Então a mensagem "Usuário ou senha inválido." é exibida

Cenário 09: Validar login com a senha errada
    [TAGS]              009
    Dado que eu esteja na tela de login do Portal de Resultados
    E informo a senha incorreta
    Quando clico em autenticar
    Então a mensagem "Usuário ou senha inválido." é exibida

Cenário 10: Validar login com usuário bloqueado
    [TAGS]              010
    Dado que eu esteja na tela de login do Portal de Resultados
    E faço o login com usuário bloqueado
    Quando clico em autenticar
    Então a mensagem "Não foi possível realizar login, o usuário esta bloqueado." é exibida


*** Keywords ***
Que eu esteja na tela de login do Portal de Resultados
    Valida Sessão

Eu insiro o meu e-mail
    Inserir o email do usuário médico

A minha senha
    Inserir a senha do usuário

Clico em Autenticar
    Clicar em autenticar

O login é feito com sucesso
    Valida o Login com sucesso

Eu insiro o meu usuário do tipo convênio
    Usuário Convênio

Eu insiro o meu usuário do tipo categoria
    Usuário Categoria

Eu insiro o meu usuário do tipo procedência
    Usuário Procedência

Eu clico em autenticar sem informar o usuário e senha
    Clicar em autenticar

A mensagem "Informe usuário e senha" é exibida
    Wait Until Page Contains            Informe usuário e senha

Eu clico em autenticar com o campo usuário em branco
    Login com o campo usuário em branco

Eu clico em autenticar com o campo senha em branco
    Login com o campo senha em branco

Insiro um usuário que não existe na base de dados
    Login com usuário inexistente

A mensagem "Usuário ou senha inválido." é exibida
    Wait Until Page Contains            Usuário ou senha inválido.

informo a senha incorreta
    Login com a senha errada

Faço o login com usuário bloqueado
    Login com o usuário bloqueado

A mensagem "Não foi possível realizar login, o usuário esta bloqueado." é exibida
    Wait Until Page Contains             Não foi possível realizar login, o usuário esta bloqueado. Utilize a opção "Esqueceu sua senha?" para definir uma nova senha e ativar o usuário.
