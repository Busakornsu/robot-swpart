*** Settings ***
Library  RequestsLibrary


*** Test Cases ***
Call list of users from jsonplaceholder
    Create Session   api   https://jsonplaceholder.typicode.com
    ${response}=  Get Request  api  /users
  Should be Equal  ${200}   ${response.status_code}
  ${Len}=  Get Length  ${response.json()}
  Should be equal  ${10}  ${len}
  
  Should be equal  Bret  ${response.json()[0]["username"]}