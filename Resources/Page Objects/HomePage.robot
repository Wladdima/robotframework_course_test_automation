*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NEW_CUSTOMER_BUTTON} =  id=new-customer
${HOME_HEADER_LABEL} =  Our Happy Customers
${NEW_CUSTOMER_ADDED_MESSAGE} =  Success! New customer added.

*** Keywords ***
Verify Home Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LABEL}

Click New Customer Button
    Click Link             ${NEW_CUSTOMER_BUTTON}

Verify New Customer Added
    Wait Until Page Contains        ${NEW_CUSTOMER_ADDED_MESSAGE}