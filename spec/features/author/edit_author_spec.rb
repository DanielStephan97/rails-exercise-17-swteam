require 'rails_helper'
describe "Edit author page", type: :feature do

	it "should render" do
		visit new_author_path
		
		fill_in "author_first_name", :with => "Alan"
		fill_in "author_last_name", :with => "Turing"
		fill_in "author_homepage", :with => "http://wikipedia.org/Alan_Turing"
		find('input[type="submit"]').click
		page.find_link('Edit').click
	end

end