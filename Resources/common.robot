*** Settings ***
Library        SeleniumLibrary
Resource   ../Tests/crm.robot

*** Variables ***


*** Keywords ***
Begin Web Test
    Set Selenium Speed     .2s
    Set Selenium Timeout   5s

    Log                    Starting the test case!
    Open Browser           about:blank  ${BROWSER}


End Web Test
    Sleep    3s
    Close Browser