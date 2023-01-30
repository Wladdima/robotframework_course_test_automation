*** Settings ***
Documentation        This is some basic info about the whole suite
Library              SeleniumLibrary


*** Variables ***



*** Test Cases ***
Should be able to add new customer
    [Documentation]        This is some basic info about the test
    [Tags]                 1006    Smoke    Contacts
    Set Selenium Speed     .2s
    Set Selenium Timeout   5s

    Log                    Starting the test case!
    Open Browser           https://automationplayground.com/crm/    chrome
    Page Should Contain    Customers Are Priority One!

    Click Link             id=SignIn
    Page Should Contain    Login
    
    Input Text             id=email-id        admin@fakeemail.com
    Input Text             id=password        qwerty123
    Click Button           Submit
    Page Should Contain    Our Happy Customers

    Click Link             id=new-customer
    Page Should Contain    Add Customer
    
    Input Text             id=EmailAddress    max.mustermann@fakemail.com
    Input Text             id=FirstName       Max
    Input Text             id=LastName        Mustermann
    Input Text             id=City            Berlin
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button    gender        male
    Select Checkbox        promos-name
    Click Button           Submit

    Page Should Contain    Success! New customer added.

    Sleep                  3s
    Close Browser


*** Keywords ***

