*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.ebay.com/
${Browser}  chrome


*** Keywords ***
Launch the browser
	Open Browser    ${URL}   ${Browser}
	Maximize Browser Window

Close the Browser
	Close Browser