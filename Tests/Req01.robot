*** Settings ***
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
	Wait Until Element Is Visible	${firstAutocompleteResult}
	Click Element	${firstAutocompleteResult}
	Wait Until Element Contains	${headerTitle}	${countryName}
	Capture Page Screenshot
