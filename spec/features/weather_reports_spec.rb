require "spec_helper"

feature "Weather reports" do
	context "with a valid place name" do
		scenario "it returns the weather" do
			visit root_path
			fill_in 'location', with: 'Suwon'
      click_button 'Go!'
      expect(page).to have_content('not today')
		end
	end

	context "with an invalid place name" do
    scenario "it renders #New form" do
      visit root_path
      fill_in 'location', with: "Your mom's house"
      click_button 'Go!'
      expect(page).to have_content("Your mom's house is not valid")
    end
	end
end