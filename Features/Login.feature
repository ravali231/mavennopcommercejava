Feature: Login

Scenario: Successful Login with Valid Credentials
		Given User Launch Chrome browser
		When User opens URL "https://admin-demo.nopcommerce.com/login"
		And User enters Email as "admin@yourstore.com" and password as "admin"
		And Click on Login
		Then Page Title should be "Dashboard / nopCommerce administration"
		When User click on Log out link
		Then Page Title should be "Your store. Login"
		And close Browser		
		
Scenario Outline: Login Data Driven
		Given User Launch Chrome browser
		When User opens URL "https://admin-demo.nopcommerce.com/login"
		And User enters Email as "<email>" and password as "<password>"
		And Click on Login
		Then Page Title should be "Dashboard / nopCommerce administration"
		When User click on Log out link
		Then Page Title should be "Your store. Login"
		And close Browser	
		
		
		Examples:
				| email | password |
				| admin@yourstore.com  | admin |
				| admin1@yourstore.com  | admin |
				