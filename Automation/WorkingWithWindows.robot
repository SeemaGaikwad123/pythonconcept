*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
*** Test Cases ***
Handle Windows
	Open Browser    https://www.salesforce.com/     chrome
	Maximize Browser Window
	Wait Until Element Is Visible    (//pbc-button[@data-link-type='primary cta']//a)[9]
	Click Element    (//pbc-button[@data-link-type='primary cta']//a)[9]

	@{WindowsHandles}=   Get Window Handles
	Sleep    4s

	@{WindowsIndentifier}   Get Window Identifiers
	Sleep    4s

	@{WindowsNames}     Get Window Names
	Sleep    4s

	@{WindowsTitles}        Get Window Titles
	Sleep    4s

	Set Window Position    100  200
	Sleep    4s

	${x}  ${y}=    Get Window Position

	Log     ${x}
	Log    ${y}

	Switch Window   ${WindowsHandles}[1]
	Maximize Browser Window
	Log    ${WindowsHandles}[1]
	Sleep    4s

	Switch Window   ${WindowsHandles}[0]
	Maximize Browser Window
	Log    ${WindowsHandles}[0]

