*** Settings ***

# run test case by this command
# robot -d Results/Req10 Tests/Req10.robot

Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Add Comment To Article
	Click Element	${first_ticket}
	Input Text		${comment_area}		${comment}
	Click Element	${add_comment_button}
	Alert Should Be Present
	Input Text		${name_comment_input}		${comment_name}
	Input Text		${email_comment_input}		${comment_email}
	Click Element	${add_comment_button}
	Wait Until Element Is Visible		${not_robot_alert}
	Capture Page Screenshot
