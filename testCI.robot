*** Settings ***
Library 	Selenium2Library
Suite Setup	Open browser		${homepage}	${browser}
Test Setup	Go To		${homepage}
Suite Teardown		Close All Browsers
Documentation		test CI

*** Variables ***
${homepage}	https://www.google.com/
${browser}	chrome

*** Test Cases ***
Google devops and find amazon.com
	[Tags]	devops	amazon	smoke
	Google and check results	devops		https://aws.amazon.com/devops/what-is-devops/

Google robot and find its web site
	[Tags]	robot
	Google and check results	robot framework		https://robotframework.org/

*** Keywords ***
Google and check results
	[Arguments]	${searchkey}	${result}
	Input Text	name=q		${searchkey}
	Press Key    name=q    \\13	