require "rails_helper"
 
RSpec.feature "Users can view events" do 
	scenario "with the event details" do 
		event = Event.create(:organization, name: "Yada yada yada")

		visit "/"
		click_link "Whatever you want."
		expect(page.current_url).to eq event_url(event)
	end
end