*** Settings ***
Library    SeleniumLibrary
Variables    ../WebElements.py

*** Variables ***
${Search_Text}  Mobile

*** Keywords ***
Verify Search Result
	Input Text    ${HomePageSearchTextBox}     ${Search_Text}
	Click Element     ${HomePageSearchButton}
	Page Should Contain    results for Mobile