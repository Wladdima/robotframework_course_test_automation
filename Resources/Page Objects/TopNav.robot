*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${sign_in_link} =  id=SignIn
${sign_out_link} =  Sign Out

*** Keywords ***
Click Sign In Link
    Click Link             ${sign_in_link}

Click Sign Out Link
    Click Link        ${sign_out_link}

