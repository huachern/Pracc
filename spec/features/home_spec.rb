require 'rails_helper'

feature "visits homepage" do
	scenario "sees welcome message" do
		visit root_path
		expect(page).to have_text("Welcome")
	end
end