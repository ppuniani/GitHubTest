Given /^the input "(.*?)"$/ do |input|
  @input = input
end
When /^the calc is run$/ do
  @output = `ruby calc.rb #{@input}`
  raise('Command failed!') unless $?.success?
end
Then /^the o\/p should be "(.*?)"$/ do |exp_output|
  @output.should == exp_output
end