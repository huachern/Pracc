require 'rails_helper'

feature "members registers for site" do
	scenario "host registers" do
		visit root_path
		click_link "Become a Host"
		fill_in_registration_fields
		expect(page).to have_content("Welcome!")
	end

	def fill_in_registration_fields
		fill_in "member[name]", with: FFaker::Name.name
		fill_in "member[email]", with: FFaker::Internet.email
		fill_in "member[password]", with: Devise.friendly_token.first(8)
		click_button "Sign up"
	end
end