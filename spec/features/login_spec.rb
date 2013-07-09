require 'spec_helper'

feature "login" do
  scenario "with correct password" do
    user = FactoryGirl.create(:user)

    visit login_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password

    click_on "Login"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Logged in")
  end
end

# SAME THING!
#
# describe "login" do
#   it "with correct password" do
#     ...
#   end
# end