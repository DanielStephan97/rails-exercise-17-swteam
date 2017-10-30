require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end

  it "should have an input field 'First name', 'Last name' and 'Homepage'" do
    visit new_author_path 
	
    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end
  
  it "should throw no error if an user saves an author" do
	add_author
	fill_in "author_last_name", :with => "Turing"
	find('input[type="submit"]').click
  end
  
  it "should report that Last name can't be blank" do
	add_author
	find('input[type="submit"]').click
	expect(page).to have_content("Last name can't be blank")
  end
  
  private 
  def add_author
	visit new_author_path
	
	@old_path = current_path
	fill_in "author_first_name", :with => "Alan"
	fill_in "author_homepage", :with => "http://wikipedia.org/Alan_Turing"
  end

end
