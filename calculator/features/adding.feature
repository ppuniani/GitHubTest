Feature: Adding
	Scenario Outline: Add two numbers
		Given the input "<input>"
		When the calc is run
		Then the o/p should be "<output>"
		
		Examples:
			| input | output |
			| 2+2 | 4 |
			| 98+1 | 99 |
		