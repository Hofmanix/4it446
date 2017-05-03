*** Settings ***
Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Destination page has submenu
	Wait Then Click	${firstDiscountTicket}
	Wait Until Element Is Visible	${map}
	Capture Page Screenshot