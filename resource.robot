*** Settings ***
Documentation  Resource File for Survey Application Testing
Library  SeleniumLibrary

*** Keywords ***
Open Browser to Survey Page
	Open Browser  ${LOGIN URL}  ${BROWSER}
	Maximize Browser Window
	Set Selenium Speed  ${DELAY}
	Title Should Be  ${TITLE}

Wait Until Element
	Wait Until Element is Visible  ${ELEMENT}  timeout=10 seconds

Click Element for list value
	Click Element  ${LIST}

Select From List
	Select From List By Value  ${LIST}  ${VALUE}

Click Okay Button
	Click Button  ${BUTTON}

Input Country of Origin
	Input Text  ${Country of Origin}  ${Country of Origin Value}

Click Complete Survey Button
	Click Button  ${Complete Survey}