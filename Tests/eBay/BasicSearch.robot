*** Settings ***
Documentation    search functionality
Library     SeleniumLibrary
Resource    ../../Resources/CommonFunctionality.robot
Resource    ../../Resources/PO/SearchFunctionality.robot

*** Variables ***

*** Test Cases ***
Verify the search functionality
	[Documentation]    This test case verify the search functionality
	[Tags]     Functional

    Launch the browser
	Verify Search Result
	Close the Browser


*** Keywords ***





