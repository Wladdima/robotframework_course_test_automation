*** Settings ***
Library    SeleniumLibrary
Resource    ../../Tests/crm.robot

*** Variables ***
${login_email_field} =   id=email-id
${login_password_field} =  id=password
${submit_button} =  Submit
${LOGIN_PAGE_LABEL} =  Login

*** Keywords ***
Verify Sign In Page Loaded
    Wait Until Page Contains    ${LOGIN_PAGE_LABEL}

Sign In
    [Arguments]    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Fill "Email" Field    ${LOGIN_EMAIL}
    Fill "Password" Field    ${LOGIN_PASSWORD}
    Submit Sign In Form
    

Fill "Email" Field
    [Arguments]    ${LOGIN_EMAIL}
    Input Text             ${login_email_field}        ${LOGIN_EMAIL}

Fill "Password" Field
    [Arguments]    ${LOGIN_PASSWORD}
    Input Text             ${login_password_field}        ${LOGIN_PASSWORD}

Submit Sign In Form
    Click Button           ${submit_button}
