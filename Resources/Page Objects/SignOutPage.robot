*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Sign Out Page Loaded
    Wait Until Page Contains    Signed Out
    