*** Settings ***

# run test case by this command
# robot -d Results/Req03 Tests/Req03.robot

Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			https://www.cestujlevne.com/pruvodce/gruzie	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Destination page has submenu
	Wait Until Element Is Visible	${destinationNav}
	Capture Page Screenshot
