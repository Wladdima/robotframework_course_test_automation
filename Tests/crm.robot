*** Settings ***
Documentation        This is some basic info about the whole suite
Resource             ../Resources/common.robot
Resource             ../Resources/crm.robot
Test Setup           Begin Web Test
Task Teardown        End Web Test


*** Variables ***



*** Test Cases ***
User can add new customer
    crm.Sign In
    crm.Add New Customer
    crm.Sign Out

*** Keywords ***

