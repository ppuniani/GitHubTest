Given /^user enters "(.*?)"$/ do |input|
  @input = input
end

When /^Calc is run$/ do
  @output = `ruby calc.rb #{@input}`
end

Then /^output should be "(.*?)"$/ do |arg1|
  @output. == arg1;
  
end