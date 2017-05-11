*** Settings ***

# run test case by this command
# robot -d Results/Req04 Tests/Req04.robot

Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Add Post To Forum
	Login
	Click Element		${forum_link}
	Click Element		${first_forum_article}
	Input Text			${post_area}	${post}
	Click Element		${add_post_button}
	Wait Until Element Is Visible	${delete_post}
	Capture Page Screenshot
	Click Element		${delete_post}
	Confirm Action

