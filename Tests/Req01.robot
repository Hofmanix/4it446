*** Settings ***

# run test case by this command
# robot -d Results/Req01 Tests/Req01.robot


Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Homepage search input with autocomplete
	Wait Until Element Is Visible	${searchInput}
	Input Text	${searchInput}	${searchKeyword}
	Wait Then Click	${firstAutocompleteResult}
	Wait Until Element Contains	${headerTitle}	${countryName}
	Capture Page Screenshot
