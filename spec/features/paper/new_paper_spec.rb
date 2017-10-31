require 'rails_helper'

describe "New paper page", type: :feature do
  
	it "should render withour error" do
		visit new_paper_path
	end

	it "should have a field 'Title'" do
		visit new_paper_path
		expect(page).to have_field('Title')
	end

	it "shuld hava a field 'Venue'" do
		visit new_paper_path
		expect(page).to have_field('Venue')
	end

	it "should have a field 'Year'" do
		visit new_paper_path
		expect(page).to have_field('Year')
	end

end
