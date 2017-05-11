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
Edit user info
	Login
	Go To CMS
	Click Element	${edit_info_link}
	Input Text		${first_name_input}		${firstName}
	Input Text		${last_name_input}		${lastName}
	Select Country	${newHome}		${country_nemec}
	Input Text		${description_input}	${description}
	Select From List By Value		${gender_select}		${female_gender}
	Capture Page Screenshot
	Click Element 	${save_changes_button}
	Capture Page Screenshot
	Click Element	${edit_info_link}
	Clear Element Text 	${first_name_input}
	Clear Element Text	${last_name_input}
	Select Country	${oldHome}	${country_cesk}
	Clear Element Text	${description_input}
	Select From List By Value		${gender_select}		${male_gender}
	Click Element 	${save_changes_button}
	Capture Page Screenshot
