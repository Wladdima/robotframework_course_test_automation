*** Settings ***
Library    SeleniumLibrary
Resource   ../../Tests/crm.robot

*** Variables ***
${LANDING_PAGE_LABEL} =  Customers Are Priority One!

*** Keywords ***
Load
    Go To        ${LANDING_PAGE_URL}                 

Verify Landing Page Loaded
    Wait Until Page Contains    ${LANDING_PAGE_LABEL}
