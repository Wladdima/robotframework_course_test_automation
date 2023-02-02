*** Settings ***
Documentation        This is some basic info about the whole suite
Resource             ../Resources/common.robot
Resource             ../Resources/crm.robot
Test Setup           Begin Web Test
Task Teardown        End Web Test


*** Variables ***
${LANDING_PAGE_URL} =  https://automationplayground.com/crm/
${BROWSER} =  chrome
${LOGIN_EMAIL} =  max.mustermann@fakemail.com
${LOGIN_PASSWORD} =  abc123
${new_user_email} =  vp@mail.com
${first_name} =  Vladimir
${last_name} =  Popov
${city} =  Dallas
${state_or_region} =  CA
${gender} =  male



*** Test Cases ***
User can add new customer
    crm.Sign In
    crm.Add New Customer 
    crm.Sign Out

*** Keywords ***

