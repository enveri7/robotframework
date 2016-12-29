*** Settings ***
Documentation     A test suite containing tests related to online calculator.
...
...               These tests are data-driven by their nature.
...
...               This suite also demonstrates using setups and teardowns in
...               different levels.
Suite Setup       Open Browser To Page
Suite Teardown    Close Browser
Test Setup        Go To Page
Test Template     Login With Invalid Credentials Should Fail
Resource          ${EXECDIR}/resources/resource_calc.robot

*** Test Cases ***               FIRST        SECOND        THIRD
1+5                              one          plus          four
2+3                              two          plus          three
9-4                              nine         minus         four
1x5                              one          times         five
8 clear 5                        eight        clear         five


*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${first}    ${second}    ${third}
    Submit Button    ${first}
    Submit Button    ${second}
    Submit Button    ${third}
    Submit Button    DoIt

Login Should Have Failed
    Location Should Be    ${URL}
    Textfield Value Should Be    Input    5
