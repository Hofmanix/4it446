*** Settings ***

# run test case by this command
# robot -d Results/Req06_07 Tests/Req06.robot

Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Logout
	Login
	Go To CMS
	Logout
	Capture Page Screenshot
