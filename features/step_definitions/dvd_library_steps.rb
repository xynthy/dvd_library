Given(/^there are no DVDs in library$/) do
end

When(/^I go to the DVDs display page$/) do
	visit in_library_dvds_url
end

Then(/^I should see that there are no DVDs$/) do
		page.should have_content("There are no DVDs in the library")
	end

Dvd = Struct.new :case, :case_page

Given(/^there are some DVDs in library$/) do
	@dvds = [
		Dvd.new("Case1", "Star Wars Episode IV"),
		Dvd.new("Case2", "Star Trek")
	]
end

Then(/^I should see the DVDs grouped by case$/) do
	@dvds.each do |dvd|
		within(".#{dvd.case}") do
			page.should have_css(".dvd", text: dvd.title)
		end
	end
end
