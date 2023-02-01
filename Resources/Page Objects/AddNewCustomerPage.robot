*** Settings ***
Library  SeleniumLibrary
Resource    ../../Tests/crm.robot


*** Variables ***


*** Keywords ***
Verify Add New Customer Page Loaded
    Wait Until Page Contains    Add Customer


Add New Customer
    Input Text             id=EmailAddress    ${EMAIL}
    Input Text             id=FirstName       Max
    Input Text             id=LastName        Mustermann
    Input Text             id=City            Berlin
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button    gender        male
    Select Checkbox        promos-name
    Click Button           Submit
    
    