*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_OUT_MESSAGE} =  Signed Out


*** Keywords ***
Verify Sign Out Page Loaded
    Wait Until Page Contains    ${SIGN_OUT_MESSAGE}
    