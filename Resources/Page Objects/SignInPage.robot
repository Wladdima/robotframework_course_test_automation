*** Settings ***
Library    SeleniumLibrary
Resource    ../../Tests/crm.robot

*** Variables ***

*** Keywords ***
Verify Sign In Page Loaded
    Wait Until Page Contains    Login

Sign In
    Input Text             id=email-id        ${EMAIL}
    Input Text             id=password        qwerty123
    Click Button           Submit