*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost:8080/th/
${BROWSER}  Chrome
${DELAY}  3

*** Test Cases ***
Test Emergency Contact Form
    Open Browser  ${URL}  ${BROWSER}
    SET Selenium Speed  ${DELAY}
    Click image  http://localhost:8080/1-home_default/hummingbird-printed-t-shirt.jpg
              
