Feature: Transfer
	Scenario: Transfer funds from saving to checking
		Given I deposited $10 in Checking account
		And deposited $500 in my Saving account
		When I transfer $500 from my Saving account to Checking account
		Then my checking account should have $510