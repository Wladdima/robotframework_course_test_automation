*** Settings ***
Library        SeleniumLibrary


*** Variables ***


*** Keywords ***
Open Add New Customer Page
    Click Link             id=new-customer
    
#    Page Should Contain    Add Customer

Add New User
    Input Email
    Input FirstName
    Input LastName
    Input City
    Select State or Region
    Select Gender
    Confirm adding to promotial List
    Submit adding a new User

Input Email
    Input Text             id=EmailAddress    max.mustermann@fakemail.com

Input FirstName
    Input Text             id=FirstName       Max

Input LastName
    Input Text             id=LastName        Mustermann

Input City
    Input Text             id=City            Berlin

Select State or Region
    Select From List By Value    id=StateOrRegion    TX

Select Gender
    Select Radio Button    gender        male

Confirm adding to promotial List
    Select Checkbox    promos-name

Submit adding a new User
    Click Button           Submit

#Page Should Contain    Success! New customer added.