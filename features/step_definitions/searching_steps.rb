
Given("that a user is on the landing page") do
  visit root_path
end

Given("that they fill out the search bar") do
  fill_in "search", :with => 'Prophet'
end

When("that they click enter") do
  find("#search").set("\t")
end

Then("the items they searched for should be visible") do
  expect(page).to have_content("Prophet 6")
end