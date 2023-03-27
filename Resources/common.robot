*** Settings ***
Library        SeleniumLibrary
Resource   ../Tests/crm.robot
Library    Saucelabs.py

*** Variables ***


*** Keywords ***
Begin Web Test
    Set Selenium Speed     .2s
    Set Selenium Timeout   5s

    Log                    Starting the test case!
    Open Browser           about:blank  ${BROWSER}    
    ...    remote_url=${REMOTE_URL}
    ...    desired_capabilities=${DESIRED_CAPABILITIES}


End Web Test
    Sleep    3s
#    Run Keyword If    '${REMOTE_URL}' != ''    
#    ...    report_sauce_status    
#    ...    ${SUITE_NAME}:    ${TEST_NAME}
#    ...    ${TEST_STATUS}    ${REMOTE_URL}
    Close All Browsers
