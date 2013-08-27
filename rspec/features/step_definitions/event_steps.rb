# event_steps.rb

class Event
	attr_accessor :author

	def initialize
		@author = "Shuo Zhang"
	end
	
end

Given /^a new event$/ do
	@my_event = Event.new
end

When /^I request the author of the event$/ do
	@author = @my_event.author
end

Then /^I should see "(.*?)"$/ do |name|
	@author.should == name
end