*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost:8080/en/
${BROWSER}  firefox
${DELAY}  1

*** Test Cases ***
Test4_01
    Open Browser  ${URL}  ${BROWSER}
    SET Selenium Speed  ${DELAY}
Test4_02
    Click Image  http://localhost:8080/4-home_default/seuxcs2.jpg
Test4_03
    Click Button  css=.btn.btn-primary.add-to-cart
Test4_04    
  Click BUTTON  contains(text(),"PROCEED TO CHECKOUT")

