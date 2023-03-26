*** Settings ***
Library        SeleniumLibrary
Resource   ../Tests/crm.robot

*** Variables ***
${REMOTE_URL} =  https://oauth-wladdima.wladimir-8afe7:9b413aa6-9a20-4f20-88b0-c5a269704bb0@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${DESIRED_CAPABILITIES} =  name:Win 10 + Chrome 70,platform:Windows 10,browserName:chrome,version:109.0

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
    Close All Browsers