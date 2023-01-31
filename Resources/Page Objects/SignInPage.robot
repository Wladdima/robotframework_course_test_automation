*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Sign In Page Loaded
    Wait Until Page Contains    Login

Sign In
    Input Text             id=email-id        admin@fakeemail.com
    Input Text             id=password        qwerty123
    Click Button           Submit