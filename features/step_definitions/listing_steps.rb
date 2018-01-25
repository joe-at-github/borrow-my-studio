Given("an item exists") do
  @item = Item.create!(item_name: 'DJR400', daily_price: 150.00, weekly_price: 450.00, category: 'DJ mixers', description: 'Rare mixer for hire')
end

Given("they are on the home page") do
  visit root_path
end

When("they click list item") do
  click_on "List item"
end

When("they fill out the details") do
  fill_in "Item name", with: "Prophet 6"
  fill_in "Daily price", with: 100.00
  select "Synths", :from => "item_category"
end

When("they upload photos of the item") do
  attach_file("item[images][]", Rails.root + "features/fixtures/p6.jpg" ) 
end

When("they click the create item button") do
  click_button "Create Item"
end

Then("the item is saved to the database") do
  expect(Item.last.item_name).to eq 'Prophet 6'
  expect(Item.last.category).to eq 'Synths'
end

Then("they see a flash notice that confirms that they have listed an item") do
  expect(page).to have_content("Congratulations you have successfully listed an item.")
end

Then("they are taken to the item page") do
  expect(page).to have_content("Prophet 6")
end


Given("that they are on the item page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("they click on edit item") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("they edit the listing") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("they click on update item") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the item will be updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("they see a flash notice that confirms that they have edited the item") do
  pending # Write code here that turns the phrase above into concrete actions
end