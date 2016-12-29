*** Settings ***
Documentation     A Ghrekin style test to find a certain wikipedia website.
Resource  ${EXECDIR}/resources/resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Gherkin style test
    Given browser is opened to page
    When search text auto is written and search button is clicked
    Then auto Page Should Be Open

*** Keywords ***
Browser is opened to page
    Open Browser To Start Page

When search text ${text} is written and search button is clicked
    Input Search Text    ${text}
    Submit Search Button
