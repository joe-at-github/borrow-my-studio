Given("that they are logged in") do
  visit new_user_session_path
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => 'password'
  click_on 'Log in'
end

Given("they visit their account page") do
  visit new_user_account_path(@user.id)
end

When("they fill out the account page with their details") do
  fill_in "Name", with: "Scott"
  fill_in "Location", with: "E5 0LR"
  fill_in "Telephone", with: "07494451935"
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
  expect(find_field('account_name').value).to eq 'Scott'
  expect(find_field('account_location').value).to eq 'E5 0LR'
end

Given("they have edited the content") do
  fill_in "Telephone", with: "0909090909090"
end

When("they submit the update account form") do
  click_on "Update Account"
end

Then("the account is updated") do
  expect(Account.last.telephone).to eq "0909090909090"
end

Then("they see a flash notice informing them that their record is updated") do
  expect(page).to have_content("Your account information was successfully updated.")
end