Given("they are on the sign up page") do
  visit new_user_registration_path
end

When("they provide their credentials") do
  fill_in 'Email', :with => 'scottwenborne909@gmail.com'
  fill_in 'user_password', with: 'password'
  fill_in 'Password confirmation', :with => 'password'
end

When("they sign up") do
  click_button('Sign up')
end

Then("they will be registered but not confirmed") do
  expect(User.last.email).to eq 'scottwenborne909@gmail.com'
  expect(User.last.confirmed_at).to eq nil
end

Then("they see a flash notice that confirms that they have signed up") do
  expect(page).to have_content "Welcome! You have signed up successfully."
end

Given("that a user exists") do
  @user = User.create!(email: "scottwenborne909@gmail.com", password: "password")
end

Given("they are on the sign in page") do
  visit new_user_session_path
end

When("they enter their login details") do
  fill_in 'Email', :with => 'scottwenborne909@gmail.com'
  fill_in 'user_password', with: 'password'
end

When("they log in") do
  click_button 'Log in'
end

Then("they redirect to the home page") do
  current_path.should == "/"
end

Then("they see a flash notice that confirms that they are signed in") do
  expect(page).to have_content "Signed in successfully."
end