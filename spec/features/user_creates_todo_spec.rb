require 'rails_helper'

feature "User creates a todo" do
  scenario "successfully" do
    sign_in

    click_on "Add New Todo"
    fill_in "Title", with: "Buy Milk"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: 'Buy Milk'
  end
end