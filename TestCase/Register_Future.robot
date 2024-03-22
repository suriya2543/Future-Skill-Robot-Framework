*** Settings ***
Resource    ../Keyword/HomepageKeyword.robot
Resource    ../Keyword/RegisterKeyword.robot
Resource    ../Keyword/RegisterOTP_Keyword.robot
Variables    ../Resource/config.yml
Variables    ../Resource/DataTest.yml
Library    SeleniumLibrary

Suite Setup    Open Browser    ${baseURL}    Chrome
Suite Teardown  Close Browser

*** Test Cases ***
Test Case To Register For Future Skill
  [Documentation]  Test Case To Register For Future Skill
  HomepageKeyword.Click Button For Register
  RegisterKeyword.Textbox Email  ${email}
  RegisterKeyword.Textbox Name    ${name}
  RegisterKeyword.Textbox Lastname    ${lastname}
  RegisterKeyword.Textbox Phone Number   ${phone_number}
  RegisterKeyword.Textbox Password   ${password}    
  RegisterKeyword.Textbox Confirm Password    ${confirm_password}
  RegisterKeyword.Click Accept Term And Condition
  RegisterKeyword.Click Register Button
  RegisterOTP_Keyword.Assert Page Should Contain Text    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์










