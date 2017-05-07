*** Settings ***

# run test case by this command
# robot -d Results/Req08 Tests/Req08.robot

Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Change Password
	Login
	Change To New Password
	Logout
	Login With New Password
	Change To Old Password











