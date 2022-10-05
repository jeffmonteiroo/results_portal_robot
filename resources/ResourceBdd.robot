
***Settings***
Documentation       Aqui teremos as Keyword's para os testes em BDD

***Keywords***

Inserir o email do usuário médico
    Input Text                          ${USER}                 ${USER_MEDICO} 

Inserir a senha do usuário
    Input Password                      ${PASS}                 ${SENHA} 

Clicar em autenticar
    Click Element                       ${AUTENTICAR}   

Valida o Login com sucesso
    Wait Until Page Contains Element    ${CABEÇALHO}            5
    Wait Until Page Contains            ${EXAM_RESULTS}         5

Usuário Convênio
    Input Text                          ${USER}                 ${USER_CONVENIO}  

Usuário Categoria
    Input Text                          ${USER}                 ${USER_CATEGORIA}

Usuário Procedência
    Input Text                          ${USER}                 ${USER_PROCEDENCIA} 

Informe usuário e senha
    Wait Until Page Contains            Informe usuário e senha
    
Login com o campo senha em branco
    Input Text                          ${USER}                 ${USER_CONVENIO}
    Click Element                       ${AUTENTICAR}         

Login com o campo usuário em branco
    Input Text                          ${PASS}                 ${SENHA}
    Click Element                       ${AUTENTICAR}         

Login com usuário inexistente
    Input Text                          ${USER}                 ${USER_NOT_EXIST}
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}    

Login com a senha errada
    Input Text                          ${USER}                 ${USER_MEDICO} 
    Input Password                      ${PASS}                 ${WRONG_PASS}
    Click Element                       ${AUTENTICAR}         

Login com o usuário bloqueado
    Input Text                          ${USER}                 ${BLOCKED_USER} 
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}     