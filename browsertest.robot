*** Settings ***
Documentation  Survey Application Testing using Robot Framework
Resource  resource.robot

*** Variables ***
${LOGIN URL}  http://localhost/Survey
${BROWSER}  chrome
${DELAY}  0
${TITLE}  Survey Tool
${ELEMENT}  //div[@class="modal-content"]
${LIST}  id:lang
${VALUE}  en
${BUTTON}  //*[@id="chooseLangForm"]/div[2]/button 
${Country of Origin}  name:Nationality
${Country of Origin Value}  India
${Complete Survey}  //*[@id="surveyForm"]/div[70]/button

*** Test Cases ***
Valid Survey Submit
	Open Browser to Survey Page
	Wait Until Element
	Click Element for list value
	Select From List
	Click Okay Button
	Input Country of Origin
	Click Complete Survey Button

  
