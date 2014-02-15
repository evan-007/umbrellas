require "spec_helper"

feature "Weather reports" do
	context "with valid place names" do
		scenario "return the weather" do
			visit root_path
			fill_in 'Location', with: 'Suwon'
			expect(page).to have_content('The weather is:')
		end
	end
end