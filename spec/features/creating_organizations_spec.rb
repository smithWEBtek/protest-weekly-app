require 'rails_helper'

RSpec.feature "Users can create new organizations" do 
	scenario "with valid attributes" do 
		visit '/'

		click_link "New Organization"

		fill_in 'Name', with: 'Yada yada yada'
		fill_in 'Contact_info', with: 'Whatever you want. Phone number, email, website - it's all good.
		click_button 'Create Organization'

		expect(page).to have_content "Organization has been created."
	end	
end