Given /^(?:|I )am on (.+)$/ do |page_name|
	visit path_to(page_name)
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link(arg1)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then(/^I should be on the project page for "(.*?)"$/) do |arg1|
   project_path(Project.find_by_name!(arg1))
end




