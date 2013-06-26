Then(/^I should not see the "(.*?)" link$/) do |arg1|
  page.should_not(have_css("a", :text=>arg1), "Expected to not see the #{arg1.inspect} link, but did.")
end

Given(/^I am signed in as "(.*?)"$/) do |arg1|
  @user = User.find_by_email!(arg1)
	steps("Given I am signed in as them")
end

Then(/^I should see the "(.*?)" link$/) do |arg1|
  page.should(have_css("a", :text=>arg1), "Expected to see the #{arg1.inspect} link, but did not.")
end

