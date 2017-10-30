require "rails_helper"

describe "Author index page", type: :feature do

	it "should have a link 'Add author'" do
		visit authors_path
		expect(page).to have_link('Add author')
	end
	
end