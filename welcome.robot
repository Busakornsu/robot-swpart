*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://automationpractice.com
${Browser}  gc

*** Keywords ***
Open
   Open Browser   ${URL}   browser=${Browser}
Choose Dress
    click element  xpath://*[@id="block_top_menu"]/ul/li[2]/a
