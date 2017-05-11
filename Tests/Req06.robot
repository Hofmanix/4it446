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
Login
	# Login
	Login
	Go To CMS
	Wait Until Element Is Visible	${nick_locator}
	Wait Until Element Contains		${nick_locator}		${nick}
	Capture Page Screenshot
