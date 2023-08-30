*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${Browser}  Chrome
${profession}   //button[@name='submit']

*** Test Cases ***
Launch the browser



	Open Browser   ${url}    ${Browser}
	Maximize Browser Window
	Set Selenium Speed    1seconds

Verify user able to select the gender
	Select Radio Button    sex  Male

Verify user able to select the year of experience


	
	Select Radio Button    exp  2


Verify user able to select the profession field checkbox
	Select Checkbox    RC
	#Select Checkbox    Automation Tester

Verify user able to deselect the any checkboxes
    Select Checkbox    Manual Tester

Verify user able to select the country from the dropdown
	Select From List By Label    continents     Europe

	Sleep    4

	Select From List By Index    continents     5

Verify user able to select all the option from list box
	Select All From List    xpath://select[@name='selenium_commands']

*** Keywords ***
