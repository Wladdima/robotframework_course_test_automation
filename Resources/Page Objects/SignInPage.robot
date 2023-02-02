*** Settings ***
Library    SeleniumLibrary
Resource    ../../Tests/crm.robot

*** Variables ***
${login_email_field} =   id=email-id
${login_password_field} =  id=password
${submit_button} =  Submit

*** Keywords ***
Verify Sign In Page Loaded
    Wait Until Page Contains    Login

Sign In
    Input Text             ${login_email_field}        ${LOGIN_EMAIL}
    Input Text             ${login_password_field}        ${LOGIN_PASSWORD}
    Click Button           ${submit_button}
