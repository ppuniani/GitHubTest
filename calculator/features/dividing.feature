Feature: Division
	Scenario Outline: Perform division
		Given user enters "<input>"
		When Calc is run
		Then output should be "<output>"
		
		Examples: 
			| input | output |
			| 10/2 | 5 |
			| 9/3 | 3 |
	