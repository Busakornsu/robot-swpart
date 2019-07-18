*** Settings ***
Library  SeleniumLibrary
Resource  ./welcome.robot

*** Variables ***
${URL}  http://automationpractice.com
${Browser}  gc
**** Test Cases ***
Sorting by price
    [Tags]  done  sprint1
    เปิดเว็บหน้าแรก
    เข้าไปยัง Summer Dress
    ทำการเลือก sort ด้วย price จากแพงไปถูก
    ผลการทำงานต้องแสดงผลจากแพงไปถูก


*** Keywords ***
เปิดเว็บหน้าแรก
   
    welcome.Open
เข้าไปยัง Summer Dress
   welcome.Choose Dress
    click element  xpath://*[@id="categories_block_left"]/div/ul/li[3]/a

ทำการเลือก sort ด้วย price จากแพงไปถูก
    Select from List by Value  //*[@id="selectProductSort"]

ผลการทำงานต้องแสดงผลจากแพงไปถูก
    Wait Until Element Contains xpath://