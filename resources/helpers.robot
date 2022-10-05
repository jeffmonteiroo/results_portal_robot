
***Settings***
Documentation       Aqui teremos as Keyword's helpers

***Variables***

${USER}                 xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div/div[1]/form/div[1]/div/div/div/input
${PASS}                 xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div/div[1]/form/div[2]/div/div/div/input
${AUTENTICAR}           xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div/div[1]/button
${CABEÇALHO}            xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div[1]/div/div[1]
${EXAM_RESULTS}         Resultados de exames
${SHAPE}                xpath=//*[@id="Shape"]
${IMG_CATEG}            xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div[1]/div/div[2]/div/div/div[1]/div/div[1]/img
${CLICK_IMG_CATEG}      xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div[1]/div/div[2]/div/div
${TIPO_ACESSO}          xpath=//*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div/div[1]/div/div/div[1]
${USER_PACIENTE1}       jeffmonteiroo@gmail.com
${SENHA}                T@sy1234
${USER_CONVENIO}        RP01-JEFFM
${USER_CATEGORIA}       RP02-WILL_SMITH
${USER_PROCEDENCIA}     RP03-JOHN_WICK
${USER_NOT_EXIST}       RP04-USER_NOT_EXIST
${BLOCKED_USER}         RP01-SPIDER
${WRONG_PASS}           789654123


****Keywords***
Login Patient Success
    Input Text                          ${USER}                 ${USER_MEDICO} 
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}         
    
    Wait Until Page Contains Element    ${CABEÇALHO}            5
    Wait Until Page Contains            ${EXAM_RESULTS}         5


Login Health Insurance Sucesso
    Input Text                          ${USER}                 ${USER_CONVENIO}
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}         
    
    Wait Until Page Contains Element    ${CABEÇALHO}            5
    Wait Until Page Contains            ${EXAM_RESULTS}         5       

Login Category Sucesso
    Input Text                          ${USER}                 ${USER_CATEGORIA}
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}         
    
    Wait Until Page Contains Element    ${CABEÇALHO}            5
    Wait Until Page Contains            ${EXAM_RESULTS}         5  

Login Origin Sucesso
    Input Text                          ${USER}                 ${USER_PROCEDENCIA}
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}     
    
    Wait Until Page Contains Element    ${CABEÇALHO}             5
    Wait Until Page Contains            ${EXAM_RESULTS}          5  

Login without username and password
    Click Element                       ${AUTENTICAR}
    
Login without password
    Input Text                          ${USER}                 ${USER_CONVENIO}
    Click Element                       ${AUTENTICAR}         

Login without username
    Input Text                          ${PASS}                 ${SENHA}
    Click Element                       ${AUTENTICAR}         

Login with non-existent user.
    Input Text                          ${USER}                 ${USER_NOT_EXIST}
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}    

Login with wrong password
    Input Text                          ${USER}                 ${USER_MEDICO} 
    Input Password                      ${PASS}                 ${WRONG_PASS}
    Click Element                       ${AUTENTICAR}         

Login with blocked user
    Input Text                          ${USER}                 ${BLOCKED_USER} 
    Input Password                      ${PASS}                 ${SENHA} 
    Click Element                       ${AUTENTICAR}     