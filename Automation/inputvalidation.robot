*** Settings ***

Library    SeleniumLibrary


*** Variables ***
${url}          https://www.flipkart.com/
${browser}      Chrome
${NumberField}  //input[@class='_2IX_2- VJZDxU']
${CloseCTA}


*** Test Cases ***
Validation
	Open Browser    ${url}      ${browser}
	Wait Until Page Contains   ${url}
	Maximize Browser Window

Verify the number field should be auto enabled
	Element Should Be Enabled    ${NumberField}
	Element Should Be Visible    ${NumberField}

Verify user able to enter the mobile number
	Input Text    ${NumberField}    9880955663

    Close Browser


