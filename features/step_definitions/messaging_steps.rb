Then("the user signs out") do
  click_on "Sign out"
end

Given("that another user exists") do
  @user = User.create!(email: "scottwenborne111@gmail.com", password: "password")
end

Given("they are on sign in page") do
  visit new_user_session_path
end

When("they enter login details") do
  fill_in 'Email', :with => 'scottwenborne111@gmail.com'
  fill_in 'user_password', with: 'password'
end

Given("they visit the item page") do
  visit item_path(Item.last.id)
end

When("they click message lender") do
  click_on "Message lender"
end

When("they fill out the message form") do
  fill_in 'Subject', :with => 'Prophet 6'
  fill_in 'Message', :with => 'Hi can I hire this?'
end

When("they click send") do
  click_on "Send"
end

Then("the message will be sent to the lender") do
  expect(Mailboxer::Message.last.subject).to eq 'Prophet 6'
end