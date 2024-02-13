*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost:8080/th/
${BROWSER}  Chrome
${DELAY}  1

*** Test Cases ***
Open browser
    Open Browser  ${URL}  ${BROWSER}
    SET Selenium Speed  ${DELAY}
Try changing languages
    Click Link  http://localhost:8080/gb/
    Click Link  http://localhost:8080/th/
    Click Link  http://localhost:8080/id/
Change page to Clothes while in indonesia
    Click Element  id:category-3
    Click Link  http://localhost:8080/gb/3-clothes
    Click Link  http://localhost:8080/id/3-clothes
    Click Link  http://localhost:8080/th/3-clothes
Change page to Accessories while in thai
    Click Element  id:category-6
    Click Link  http://localhost:8080/id/6-accessories
    Click Link  http://localhost:8080/th/6-accessories
    Click Link  http://localhost:8080/gb/6-accessories
Go back to first page while in english
    Click Element  id:_desktop_logo
    Click image  http://localhost:8080/1-home_default/hummingbird-printed-t-shirt.jpg
Chainging languages in item desc page(อย่าลืมเปลี่ยนเพราะรูปอาจไม่เหมือนกัน)
    Click Link  http://localhost:8080/th/men/1-hummingbird-printed-t-shirt.html
    Click Link  http://localhost:8080/id/men/1-hummingbird-printed-t-shirt.html

