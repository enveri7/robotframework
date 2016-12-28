*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         fi.wikipedia.org/wiki/Wikipedia:Etusivu
${BROWSER}        Firefox
${DELAY}          0
${START URL}      https://${SERVER}
${AUTO URL}       https://fi.wikipedia.org/wiki/Auto
${MOOTTORI URL}   https://fi.wikipedia.org/wiki/Polttomoottori


*** Keywords ***
Open Browser To Start Page
    Open Browser    ${START URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Start Page Should Be Open

Start Page Should Be Open
    Title Should Be    Wikipedia, vapaa tietosanakirja

Input Search Text
    [Arguments]    ${text}
    Input Text    searchInput    ${text}

Submit Search Button
    Click Button    searchButton

Auto Page Should Be Open
    Wait Until Element Is Visible   firstHeading
    Wait Until Element Contains   firstHeading   Auto
    Location Should Be    ${AUTO URL}

Click Link Moottori
    Click Link   moottorin

Moottori Page Should Be Open
    Wait Until Page Contains   Polttomoottori on moottori
    Location Should Be    ${MOOTTORI URL}
