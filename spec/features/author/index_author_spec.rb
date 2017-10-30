require "rails_helper"

describe "Author index page", type: :feature do

	it "should have a link 'Add author'" do
		visit authors_path
		expect(page).to have_link('Add author')
	end
	
	it "should have a link for each author with text 'Show'" do
		create_author()
		create_author()
		
		visit authors_path
		page.all('tr').each do |tr|
			next if tr.has_text?('Name')
			expect(tr).to have_link('Show')
		end
	end
	
	private
	def create_author() 
		visit new_author_path
		fill_in "author_first_name", :with => "Alan"
		fill_in "author_last_name", :with => "Turing"
		fill_in "author_homepage", :with => "http://wikipedia.org/Alan_Turing"
		find('input[type="submit"]').click
	end
	
end