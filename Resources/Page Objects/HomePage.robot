*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NEW_CUSTOMER_BUTTON} =  id=new-customer

*** Keywords ***
Verify Home Page Loaded
    Wait Until Page Contains    Our Happy Customers

Click New Customer Button
    Click Link             ${NEW_CUSTOMER_BUTTON}

Verify New Customer Added
    Wait Until Page Contains    Success! New customer added.