*** Settings ***
Documentation        This is some basic info about the whole suite
Library              SeleniumLibrary
Resource             ../Resources/Page Obects/HomePage.robot
Resource             ../Resources/Page Obects/LoginPage.robot
Resource             ../Resources/Page Obects/MainPage.robot  
Resource             ../Resources/common.robot
Test Setup           Begin Web Test
Task Teardown        End Web Test


*** Variables ***



*** Test Cases ***
User should see a main page
    [Documentation]        This is some basic info about the test 1
    [Tags]                 1006    Smoke    Contacts 
    MainPage.Open Log In Page

User can log in
    [Documentation]        This is some basic info about the test 2
    [Tags]                 1007    Smoke    Contacts 
    MainPage.Open Log In Page
    LoginPage.Log In

User can add a new User
    [Documentation]        This is some basic info about the test 3
    [Tags]                 1008    Smoke    Contacts 
    MainPage.Open Log In Page
    LoginPage.Log In
    HomePage.Add New User

*** Keywords ***

