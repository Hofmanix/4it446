*** Settings ***

# run test case by this command
# robot -d Results/Req06_07 Tests/Req06_07.robot

Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Login And Logout
	# Login
	Login
	Wait Then Click					${avatar}
	Wait Then Click					${cms_link}
	Wait Until Element Is Visible	${nick_locator}
	Wait Until Element Contains		${nick_locator}		${nick}
	Capture Page Screenshot

	# Logout
	Wait Then Click					${avatar}
	Wait Then Click					${logout_link}
	Capture Page Screenshot
