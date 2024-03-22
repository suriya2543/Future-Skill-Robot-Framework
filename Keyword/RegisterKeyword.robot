*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Textbox Email
  [Arguments]  ${email}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[1]/div/div[1]/input  ${email}

Textbox Name
  [Arguments]  ${name}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[1]/div/div[1]/input    ${name}

Textbox Lastname
  [Arguments]  ${lastname}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div[2]/div/div[1]/input    ${lastname}

Textbox Phone Number
  [Arguments]  ${phone_number}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[3]/div/div[1]/input    ${phone_number}

Textbox Password
  [Arguments]  ${password}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[4]/div/div[1]/input    ${password}

Textbox Confirm Password
  [Arguments]    ${confirm_password}
  Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[5]/div/div[1]/input    ${confirm_password}

Click Accept Term And Condition
  Click Element    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input

Click Register Button
  Click Element    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button
  Sleep    4s

usered
...  [Arguments]  ${email}
    Input Text    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[1]/div/div[1]/input    ${email}

passing
    [Arguments]  ${password}
    Input Text   xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div/div[1]/input    ${password}

passinger
    Click Element   xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div/div[1]/input
    Sleep    5s

check password
    Click Element    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div/div[1]/div[2]
    Sleep    5s

close check password
    Click Element    xpath://*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[2]/div/div[1]/div[2]
    Sleep    5s

