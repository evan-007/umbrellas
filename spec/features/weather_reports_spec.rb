require "spec_helper"

feature "Weather reports" do
	context "with valid place names" do
		scenario "return the weather" do
			visit root_path
			fill_in 'location', with: 'Suwon'
      click_button 'Go!'
			expect(page).to have_content('The weather is:')
		end
	end

	context "with invalid place name" do
		scenario "renders #New form"
	end
end