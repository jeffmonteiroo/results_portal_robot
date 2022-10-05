
***Settings***
Library         BuiltIn
Library         AppiumLibrary
Resource        helpers.robot
Library         String

***Variables***

${WELCOME}      xpath=//*[@id="root"]/div[1]/div/div/div/div/div/div/div[1]/div[2]

    
****Keywords***
Open Session
    Set Appium Timeout      60
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     browserName=Chrome
    
    Go To URL               http://192.168.254.58:8101/login        
   
Close Session
    Sleep                   5
    #Capture Page Screenshot
   
    Close Application

Valida Sessão
    Wait Until Page Contains            Bem-vindo ao seu portal de saúde
    Wait Until Element Is Visible       ${WELCOME} 

Capture Screen Recording
    Run Keyword And Ignore Error   Start Screen Recording

End Screen Recording
    ${OUTPUT_NAME}=     Get Substring       ${TEST_NAME}        0
    Run Keyword And Ignore Error   Stop Screen Recording               filename=${OUTPUT_NAME}        