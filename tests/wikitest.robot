*** Settings ***
Documentation     A single test to search a certain wikipedia website.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
...               /home/teemu/repos/omarfw/resources/resource.robot
Resource  ${EXECDIR}/resources/resource.robot

*** Test Cases ***
Test with keywords
    Open Browser To Start Page
    Input Search Text    auto
    Submit Search Button
    Auto Page Should Be Open
    Click Link Moottori
    Moottori Page Should Be Open
    [Teardown]    Close Browser
