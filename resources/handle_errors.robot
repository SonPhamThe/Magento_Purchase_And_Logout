*** Settings ***
Library    DOP.RPA.Asset
Library    DOP.RPA.Log
Library    RPA.Browser.Selenium
Library    DOP.RPA.ProcessArgument

*** Keywords ***
Handle Login Error
    [Arguments]    ${error_message}
    Log Error      ${error_message}
    Set Out Arg    purchaseStatus    ${False}
    Set Out Arg    message_errors    C:\\Magento Purchase And Logout\\login_errors.txt
    Close All Browsers