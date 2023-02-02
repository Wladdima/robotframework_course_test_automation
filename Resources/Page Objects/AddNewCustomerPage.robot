*** Settings ***
Library  SeleniumLibrary
Resource    ../../Tests/crm.robot


*** Variables ***
${email_field} =  id=EmailAddress
${first_name_field} =  id=FirstName
${last_name_field} =  id=LastName
${city_field} =  id=City
${state_or_region_field} =  StateOrRegion
${gender_field} =  gender
${add_customer_to_promotional_check_box} =  promos-name
${add_new_user_submit_button} =  Submit



*** Keywords ***
Verify Add New Customer Page Loaded
    Wait Until Page Contains    Add Customer


Add New Customer
    [Arguments]    ${new_user_email}  ${first_name}  ${last_name}  ${city}  ${state_or_region}  ${gender}
    Fill "Email" Field    ${new_user_email}
    Fill "Firstname" Field    ${first_name}
    Fill "Lastname" Field    ${last_name}
    Fill "City" Field    ${city}
    Select State Or Region    ${state_or_region}
    Select Gender    ${gender}
    Add Customer To Promotional List
    Click "Submit" Button
    

Fill "Email" Field 
    [Arguments]    ${new_user_email}
    Input Text             ${email_field}        ${new_user_email}

Fill "Firstname" Field 
    [Arguments]    ${first_name}
    Input Text             ${first_name_field}       ${first_name}

Fill "Lastname" Field
    [Arguments]    ${last_name}
    Input Text             ${last_name_field}        ${last_name}

Fill "City" Field
    [Arguments]    ${city}
    Input Text             ${city_field}            ${city}

Select State Or Region
    [Arguments]    ${state_or_region}
    Select From List By Value    ${state_or_region_field}        ${state_or_region}

Select Gender
    [Arguments]    ${gender}
    Select Radio Button    ${gender_field}        ${gender}

Add Customer To Promotional List
    Select Checkbox        ${add_customer_to_promotional_check_box}

Click "Submit" Button
    Click Button           ${add_new_user_submit_button}