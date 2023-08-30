*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
*** Test Cases ***
To demontstrate browser operation
	[Documentation]    Perform Action on browser
	Open Browser    http://google.com   chrome      alias=ChromeRCV

     Open Browser    about:blank    firefox  alias=RCVFF

    #&{alias}    Get Browser Aliases

    #Log     @{alias}[1]

    @{browser_id}   Get Browser Ids


    Switch Browser    ${browser_id}[1]
    Log    ${browser_id}[1]
    Sleep    5seconds
    Maximize Browser Window
    Go To    https://www.mewatch.sg/



