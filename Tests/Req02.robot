*** Settings ***
Library	Selenium2Library
Resource	../Settings/Index.txt
Resource	../Keywords/Index.txt
Resource	../Elements/Index.txt

Test Setup			Open Page			${url}	${browser}
Test Teardown		Close Browser

*** Test Cases ***
Page contains footer with valid links
	Wait Until Element Is Visible	${footer}
	${items}	Get Matching Xpath Count	${footer_link}
	Log to console	${items}
	: FOR	${INDEX}	IN RANGE	1	${items}-1
	\	${attribute}=		Get Element Attribute		xpath=(${footer_link})[${INDEX}]@href
	\	Should Not Be Empty		${attribute}
