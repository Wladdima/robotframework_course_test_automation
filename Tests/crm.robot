*** Settings ***
Documentation        This is some basic info about the whole suite
Library              SeleniumLibrary


*** Variables ***



*** Test Cases ***
Should be able to add new customer
    [Documentation]        This is some basic info about the Test
    [Tags]                 1006    Smoke    Contacts
    Log                    Starting the test case!
    Open Browser           https://automationplayground.com/crm/    chrome
    Sleep                  3s
    Close Browser



*** Keywords ***

