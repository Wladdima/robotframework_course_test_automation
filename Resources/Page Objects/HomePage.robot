*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Verify Home Page Loaded
    Wait Until Page Contains    Our Happy Customers

Click New Customer Button
    Click Link             id=new-customer

Verify New Customer Added
    Wait Until Page Contains    Success! New customer added.