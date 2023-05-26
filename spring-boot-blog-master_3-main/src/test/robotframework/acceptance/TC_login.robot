*** Settings ***

Library  Selenium2Library

*** Variables ***
${BROWSER}   chrome
${SELSPEED}  0.0s

*** Test Cases ***
Verify Successful Login
    [Setup]  Run Keywords  Open Browser  https://practicetestautomation.com/practice-test-login/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://practicetestautomation.com/practice-test-login/
    click    id=username
    type    id=username    student
    click    id=password
    type    id=password    Password123
    click    id=submit
    open    https://practicetestautomation.com/logged-in-successfully/
    click    link=Log out
    open    https://practicetestautomation.com/practice-test-login/
    [Teardown]  Close Browser

List value adding
    [Setup]  Run Keywords  Open Browser  https://practicetestautomation.com/practice-test-login/  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://practicetestautomation.com/practice-test-login/
    click    id=username
    type    id=username    student
    click    id=password
    type    id=password    Password123
    click    id=submit
    open    https://practicetestautomation.com/logged-in-successfully/
    click    link=Practice
    open    https://practicetestautomation.com/practice/
    click    link=Test Exceptions
    open    https://practicetestautomation.com/practice-test-exceptions/
    click    id=add_btn
    click    xpath=//div[@id='row2']/input
    type    xpath=//div[@id='row2']/input    Beer
    click    xpath=//div[@id='row2']/button
    click    link=Practice
    open    https://practicetestautomation.com/practice/
    click    link=Test Login Page
    open    https://practicetestautomation.com/practice-test-login/
    [Teardown]  Close Browser


*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}







