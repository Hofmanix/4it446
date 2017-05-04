*** Settings ***
Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Discount ticket has map
	Wait Then Click	${firstDiscountTicket}
	Wait Until Element Is Visible	${map}		10
	Capture Page Screenshot
