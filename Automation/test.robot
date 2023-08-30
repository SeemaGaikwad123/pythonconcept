*** Settings ***
Library   BuiltIn
Library    SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}          https://www.flipkart.com/
${signinCta}    //a[@title='Sign in']
${NumberField}  //input[@class='_2IX_2- VJZDxU']
${SearchBar}    //input[@title='Search for products, brands and more']
${SearchIcon}   //button[@class='L0Z3Pu']


*** Test Cases ***
TC01 Launch the chrome browser
	Open Browser              ${url}      ${browser}
	Set Selenium Speed        5
	Maximize Browser Window
	TRY:
	Click Element              ${signinCta}
	Click Element              ${NumberField}
	Input Text    ${NumberField}    9880955663
	EXCEPT :


TC02 Verify user able to search the any product
    Click Element   ${SearchBar}
    Input Text    ${SearchBar      Salwar
    Click Element   ${SearchIcon}

    Close Browser






