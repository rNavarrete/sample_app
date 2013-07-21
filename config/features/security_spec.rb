require 'spec_helper'

describe "security", :type => :feature do

  it "signs users in" do
    visit new_sessions_path
    fill_in "username", :with => "user"
    fill_in "password", :with => "pass"
    click_button "Sign In"

    page.should have_content('Login Successful')
  end
end