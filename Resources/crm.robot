*** Settings ***
Resource  ../Resources/Page Objects/LandingPage.robot
Resource  ../Resources/Page Objects/TopNav.robot
Resource  ../Resources/Page Objects/SignInPage.robot
Resource  ../Resources/Page Objects/HomePage.robot
Resource  ../Resources/Page Objects/AddNewCustomerPage.robot
Resource  ../Resources/Page Objects/SignOutPage.robot


*** Variables ***
    

*** Keywords ***
Sign In
    LandingPage.Load
    LandingPage.Verify Landing Page Loaded
    TopNav.Click Sign In Link
    SignInPage.Verify Sign In Page Loaded
    SignInPage.Sign In
    HomePage.Verify Home Page Loaded

Add New Customer
    HomePage.Click New Customer Button
    AddNewCustomerPage.Verify Add New Customer Page Loaded
    AddNewCustomerPage.Add New Customer
    HomePage.Verify New Customer Added

Sign Out
    TopNav.Click Sign Out Link
    SignOutPage.Verify Sign Out Page Loaded
    

    