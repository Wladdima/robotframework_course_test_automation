*** Settings ***
Library        SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    Set Selenium Speed     .2s
    Set Selenium Timeout   5s

    Log                    Starting the test case!
    Open Browser           https://automationplayground.com/crm/    chrome
    Page Should Contain    Customers Are Priority One!


End Web Test
    Sleep    3s
    Close Browser