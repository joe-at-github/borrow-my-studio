Given("there are some categories") do
  @category = Category.create!(name: "Synths")
  @category_two = Category.create!(name: "Drum Machines")
end

Given("they are on the home page") do
  visit root_path
end

When("they click list item") do
  click_on "List Item"
end

When("they fill out the details") do
  fill_in "Item name", with: "Prophet 6"
  fill_in "Daily price", with: 100.00
  fill_in "Weekly price", with: 500.00
  select "Synths", :from => "item_category_id"
  fill_in "Description", with: 'for hire'
end

When("they upload photos of the item") do
  attach_file("item[images][]", Rails.root + "features/fixtures/p6.jpg" ) 
end

When("they click the create item button") do
  click_button "Create Item"
end

Then("they are taken to the item page") do
  # save_and_open_page
  expect(page).to have_content("Prophet 6")
end

Then("they see a flash notice that confirms that they have listed an item") do
  expect(page).to have_content("Congratulations you have successfully listed an item.")
end

Then("the item is saved to the database") do
  expect(Item.last.item_name).to eq 'Prophet 6'
  expect(Item.last.daily_price).to eq 100.00
end


When("they click on edit listing") do
  click_on "Edit Listing"
end

When("they edit the listing") do
  fill_in "Daily price", with: 200.00
end

When("they click on update item") do
  click_button "Update Item"
end

Then("the item will be updated") do
  expect(Item.last.daily_price).to eq 200.00
end

Then("they see a flash notice that confirms that they have edited the item") do
  expect(page).to have_content("Item has been updated.")
end

When("they click on listings") do
  # save_and_open_page
  find('.ui.right.dropdown.item').click
  click_on 'My Listings'
end

Then("they should see all their current listings") do
  expect(page).to have_content("Prophet 6")
end

Then("they can edit a listing") do
  pending # Write code here that turns the phrase above into concrete actions
end