*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         math.com/students/calculators/source/basic.htm
${BROWSER}        Firefox
${DELAY}          0
${URL}            http://${SERVER}


*** Keywords ***
Open Browser To Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Start Page Should Be Open

Go To Page
    Go To    ${URL}
    Start Page Should Be Open

Start Page Should Be Open
    Title Should Be    Basic Calculator

Submit Button
    [Arguments]    ${button}
    Click Button    ${button}
