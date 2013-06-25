Given(/^there is a project called "(.*?)"$/) do |arg1|
  @project = FactoryGirl.create(:project, :name=>arg1)
end
