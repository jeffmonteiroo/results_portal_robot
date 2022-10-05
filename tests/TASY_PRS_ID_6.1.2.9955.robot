***Settings***

Resource        ../resources/base.robot

# Executa a kw antes de cada teste case
Test Setup      Open Session

# Executa a kw depois de cada teste case
Test Teardown   Close Session



*** Test Cases***
Validate the physician user login in the results portal
    [TAGS]              001
    
    Login Physician Sucesso                         

    Wait Until Element Is Visible       ${SHAPE}                5
    Click Element                       ${SHAPE}

    Wait Until Element Is Visible       ${TIPO_ACESSO}          5
    Element Text Should Be              ${TIPO_ACESSO}          ACESSO MÉDICO



Validate the health insurance user login in the results portal.
    [TAGS]              002
    Login Health Insurance Sucesso                                

    Wait Until Element Is Visible       ${SHAPE}                5
    Click Element                       ${SHAPE}

    Wait Until Element Is Visible       ${TIPO_ACESSO}          5
    Element Text Should Be              ${TIPO_ACESSO}          ACESSO CONVÊNIO
    

Validate the category user login in the results portal.
    [TAGS]              003
    Login Category Sucesso                               

    Wait Until Element Is Visible       ${IMG_CATEG}            5
    Click Element                       ${CLICK_IMG_CATEG}      

    Wait Until Element Is Visible       ${TIPO_ACESSO}          5
    Element Text Should Be              ${TIPO_ACESSO}          ACESSO CATEGORIA


Validate the origin type user login in the results portal.
    [TAGS]              004
    Login Origin Sucesso                               

    Wait Until Element Is Visible       ${SHAPE}                 5
    Click Element                       ${SHAPE}

    Wait Until Element Is Visible       ${TIPO_ACESSO}           5
    Element Text Should Be              ${TIPO_ACESSO}           ACESSO PROCEDÊNCIA


Validate the login without the username and password.
    [TAGS]              005
    Login without username and password
    Wait Until Page Contains            Informe usuário e senha
    

Validate login without password
    [TAGS]              006
    Login without password
    Wait Until Page Contains            Informe usuário e senha

Validate the login without the username.
    [TAGS]              007
    Login without username
    Wait Until Page Contains            Informe usuário e senha

Validate login with non-existent user.
    [TAGS]              008
    Login with non-existent user.
    Wait Until Page Contains            Usuário ou senha inválido.

Validate login with wrong password.
    [TAGS]              009
    Login with wrong password
    Wait Until Page Contains            Usuário ou senha inválido. Você tem 7 tentativa(s) antes de bloquear o usuário.

Validate login with blocked user.
    [TAGS]              010
    Login with blocked user
    Wait Until Page Contains             Não foi possível realizar login, o usuário esta bloqueado. Utilize a opção "Esqueceu sua senha?" para definir uma nova senha e ativar o usuário.