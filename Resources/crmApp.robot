*** Settings ***
Resource  ../Resources/Page Objects/LandingPage.robot
Resource  ../Resources/Page Objects/TopNav.robot
Resource  ../Resources/Page Objects/SignInPage.robot
Resource  ../Resources/Page Objects/HomePage.robot
Resource  ../Resources/Page Objects/AddNewCustomerPage.robot
Resource  ../Resources/Page Objects/SignOutPage.robot


*** Variables ***
    

*** Keywords ***
Go To Landing Page
    LandingPage.Load
    LandingPage.Verify Landing Page Loaded

Sign In
    [Arguments]    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    TopNav.Click Sign In Link
    SignInPage.Verify Sign In Page Loaded
    SignInPage.Sign In    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    HomePage.Verify Home Page Loaded

Add New Customer
    [Arguments]    ${new_user_email}    ${first_name}    ${last_name}    ${city}    ${state_or_region}    ${gender}
    HomePage.Click New Customer Button
    AddNewCustomerPage.Verify Add New Customer Page Loaded
    AddNewCustomerPage.Add New Customer    ${new_user_email}    ${first_name}    ${last_name}    ${city}    ${state_or_region}    ${gender}
    HomePage.Verify New Customer Added

Sign Out
    TopNav.Click Sign Out Link
    SignOutPage.Verify Sign Out Page Loaded
    