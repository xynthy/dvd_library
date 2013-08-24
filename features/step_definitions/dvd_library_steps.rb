Given(/^there are no DVDs in library$/) do
end

When(/^I go to the DVDs display page$/) do
	visit in_library_dvds_url
end

Then(/^I should see that there are no DVDs$/) do
		page.should have_content("there are no DVDs in the library")
	end

Given(/^there are some DVDs in library$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the DVDs grouped by case$/) do
  pending # express the regexp above with the code you wish you had
end
