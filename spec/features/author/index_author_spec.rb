require "rails_helper"

describe "Author index page", type: :feature do

	it "should have a link 'Add author'" do
		visit authors_path
		expect(page).to have_link('Add author')
	end
	
	it "should have a link for each author with text 'Show'" do
		check_link_caption('Show')
	end
	
	it "should have a link for each author with text 'Destroy'" do
		check_link_caption('Destroy')
	end
	
	private
	def create_author() 
		visit new_author_path
		fill_in "author_first_name", :with => "Alan"
		fill_in "author_last_name", :with => "Turing"
		fill_in "author_homepage", :with => "http://wikipedia.org/Alan_Turing"
		find('input[type="submit"]').click
	end
	
	def check_link_caption(link)
		create_author()
		create_author()
		
		visit authors_path
		page.all('tr').each do |tr|
			next if tr.has_text?('Name')
			expect(tr).to have_link(link)
		end
	end
	
end