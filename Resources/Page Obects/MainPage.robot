*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Log In Page
    Click Link             id=SignIn
    Page Should Contain    Login

