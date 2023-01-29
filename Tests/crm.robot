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

    Click Link             id=SignIn
    Sleep                  3s
    Close Browser


*** Keywords ***

