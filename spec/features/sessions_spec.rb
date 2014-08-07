require 'rails_helper'
require 'spec_helper'


describe "login and logout process", :type => :feature do

  before :each do
    User.create(:username => 'capybara',
              :password => 'qwerty',
              :password_confirmation => 'qwerty')
  end

  it "logs me in" do
    visit '/login'
      within("#login") do
      fill_in('username', :with => 'capybara')
      fill_in('password', :with => 'qwerty')
    end
    click_button 'log in'
    expect(page).to have_content 'capybara'
  end

end
