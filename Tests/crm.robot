*** Settings ***
Documentation        This is some basic info about the whole suite
Resource             ../Resources/common.robot
Resource             ../Resources/crmApp.robot
Test Setup           Begin Web Test
Test Teardown        End Web Test


*** Variables ***
${LANDING_PAGE_URL} =  https://automationplayground.com/crm/
${BROWSER} =  chrome
${LOGIN_EMAIL} =  vp.new_email@fakemail.com
${LOGIN_PASSWORD} =  abc12331234435356457476aaaghh
${new_user_email} =  vp@mail.com
${first_name} =  Vladimir
${last_name} =  Popov
${city} =  Dallas
${state_or_region} =  CA
${gender} =  male
${REMOTE_URL} =  https://oauth-wladdima.wladimir-8afe7:9b413aa6-9a20-4f20-88b0-c5a269704bb0@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${DESIRED_CAPABILITIES} =  name:Win 10 + Chrome 70,platform:Windows 10,browserName:chrome,version:109.0


*** Test Cases ***
Landing page should load
   [Documentation]        Test landing page
   [Tags]                 1001    Smoke    Home
   crmApp.Go To Landing Page

User can sign in
    [Documentation]        Test the login
    [Tags]                 1002    Smoke    Home
    crmApp.Go To Landing Page
    crmApp.Sign In    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}

User can add new customer
    [Documentation]        Test adding a new customer
    [Tags]                 1003    Smoke    Home
    crmApp.Go To Landing Page
    crmApp.Sign In    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    crmApp.Add New Customer    ${new_user_email}    ${first_name}    ${last_name}    ${city}    ${state_or_region}    ${gender}

User can sign Outs
    [Documentation]        Test logout
    [Tags]                 1004    Smoke    Home
    crmApp.Go To Landing Page
    crmApp.Sign In    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    crmApp.Sign Out


