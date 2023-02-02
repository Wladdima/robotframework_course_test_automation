*** Settings ***
Library    SeleniumLibrary
Resource   ../../Tests/crm.robot

*** Variables ***


*** Keywords ***
Load
    Go To        ${LANDING_PAGE_URL}                 

Verify Landing Page Loaded
    Wait Until Page Contains    Customers Are Priority One!
