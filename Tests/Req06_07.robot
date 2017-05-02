*** Settings ***
Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	ff
Test Teardown		Close Browser

*** Test Cases ***
Login And Logout
	# Login
	Wait Then Click					${my_account_button}
	Wait Until Element Is Visible	${email_input}
	Input Text						${email_input}		${email}
	Input Password					${password_input}	${password}
	Click Element					${login_button}
	Wait Then Click					${avatar}
	Wait Then Click					${cms_link}
	Wait Until Element Is Visible	${nick_locator}
	Wait Until Element Contains		${nick_locator}		${nick}
	Capture Page Screenshot
	
	# Logout
	Wait Then Click					${avatar}
	Wait Then Click					${logout_link}
	Capture Page Screenshot