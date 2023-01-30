*** Settings ***
Library        SeleniumLibrary


*** Variables ***


*** Keywords ***
Log In
    Input Email
    Input Password
    Submit Login

Input Email
    Input Text             id=email-id        admin@fakeemail.com

Input Password
    Input Text             id=password        qwerty123

Submit Login
    Click Button           Submit

#Page Should Contain    Our Happy Customers    
