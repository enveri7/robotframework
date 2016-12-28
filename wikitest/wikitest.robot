*** Settings ***
Documentation     A test suite with a single test to search "auto" at wikipedia.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Wikipedia test
    Open Browser To Start Page
    Input Search Text    auto
    Submit Search Button
    Auto Page Should Be Open
    Click Link Moottori
    Moottori Page Should Be Open
