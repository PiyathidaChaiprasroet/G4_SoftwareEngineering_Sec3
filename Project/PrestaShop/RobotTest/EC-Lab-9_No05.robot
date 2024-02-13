*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    http://www.google.com
${BROWSER}    firefox
${FORM URL}    http://localhost:8080/en/

*** Test Cases ***
Open Form:
    Open Browser To form Page
    Empty email
    Empty Order Reference
    pass
*** Keywords ***
Open Browser To form Page
    Open Browser     ${FORM URL}    ${BROWSER}
    Click Element    lnk-order-tracking
pass
    Input text      name = order_reference     FFVTNWMKF
    Input text      name = email     Piyathida.cha@kkumail.com
    Click Button    Send
    Close Browser
Empty Order Reference   
    Input text      name = email     Piyathida.cha@kkumail.com
    Click Button    Send
Empty email
    Input text      name = order_reference     FFVTNWMKF   
    Click Button    Send