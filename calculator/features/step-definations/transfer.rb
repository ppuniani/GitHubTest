		Given /I deposited \$([0-9]+) in (\w+) account/ do |amount,account|
			puts("amount #{amount} account #{account}");
		end
		And /deposited \$([0-9]+) in my (\w+) account/ do |amount2,account2|
			puts("amount2 #{amount2} account2 #{account2}");
		end
		When /I transfer \$([0-9]+) from my (\w+) account to (\w+) account/ do |transferAmount, a1, a2|
		puts("transferAmount #{transferAmount} a1 #{a1} a2 #{a2}");
		end
		Then /my (\w+) account should have \$([0-9]+)/ do |a3,totalamount|
		puts("amount #{totalamount} account #{a3}");
		end