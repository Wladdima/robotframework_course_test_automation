*** Settings ***
Documentation        This is some basic info about the whole suite
Resource             ../Resources/common.robot
Resource             ../Resources/crm.robot
Test Setup           Begin Web Test
Task Teardown        End Web Test


*** Variables ***
#${LANDING_PAGE_URL} =  https://automationplayground.com/crm/
#${BROWSER} =  chrome
${EMAIL} =  max.mustermann@fakemail.com


*** Test Cases ***
User can add new customer
    crm.Sign In
    crm.Add New Customer
    crm.Sign Out

*** Keywords ***

