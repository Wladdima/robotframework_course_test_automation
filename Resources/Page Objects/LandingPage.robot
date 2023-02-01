*** Settings ***
Library    SeleniumLibrary
Resource   ../../Tests/crm.robot

*** Variables ***


*** Keywords ***
Load
    Go To        https://automationplayground.com/crm/                 

Verify Landing Page Loaded
    Wait Until Page Contains    Customers Are Priority One!
