Given("that they are logged in") do
  visit new_user_session_path
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => 'password'
  click_on 'Log in'
end

Given("they visit their account page") do
  visit new_user_account_path(@user)
end

When("they fill out the account page with their details") do
  fill_in "Name", with: "Scott"
  fill_in "Location", with: "E5 0LR"
  fill_in "Your bio", with: "Passionate musician willing to lease my gear to careful professionals"
end

When("they upload an avatar photo") do
  attach_file("account[avatar_img]", Rails.root + "features/fixtures/me.jpg")
end

Then("they submit the account form") do
  click_on "Create Account"
end

Then("their account is saved") do
  expect(Account.last.name).to eq "Scott"
end

Then("they see a notification") do
  expect(page).to have_content("Your account information has been saved.")
end

Given("that they are on their account page") do
  visit user_account_path(@user)
end

Then("their personal info should be visible") do
  # save_and_open_page
  expect(find_field('account_name').value).to eq 'Scott'
  expect(find_field('account_location').value).to eq 'E5 0LR'
end

Given("the user is on the account page just created") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("that the user clicks on edit details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("they have edited the content") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("they submit the update account form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the account page is updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("updated account is visible") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("they see a flash notice informing that their record is updated") do
  pending # Write code here that turns the phrase above into concrete actions
end