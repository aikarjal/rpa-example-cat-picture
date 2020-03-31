*** Settings ***
Resource          keywords.robot

*** Tasks ***
Find the first cat in google images search
    Open singleton browser  https://google.com
    Input text  name:q  cat picture
    Press enter
    Click element  link:Images
    ${src}=  Get Element Attribute  xpath: //*[@data-ri=0]//img  src
    Save base64 image as html  ${src}  cat.html
    close browser