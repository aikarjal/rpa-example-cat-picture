*** Settings ***
Library  SeleniumLibrary
Library  KeywordLibrary

*** Keywords ***
Press enter
  Press key  name:q  \\13

Open singleton browser
    [Documentation]
    ...  Open a new browser window on the first call
    ...  and selects that window on the subsequent calls.
    [Arguments]  ${url}=about:blank
    ${Browser is open} =  Run keyword and return status
    ...  Switch browser  singleton
    Run keyword if  ${Browser is open}
    ...  Go to  ${url}
    ...  ELSE
    ...  Open browser  ${url}  chrome  alias=singleton