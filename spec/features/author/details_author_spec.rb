require "rails_helper"

describe "Author details page", type: :feature do

	it "should show the author's first name" do
		@alan = FactoryGirl.create :author
		visit author_path(@alan)
		
		expect(page).to have_content('Alan')
		expect(page).to have_content('Turing')
		expect(page).to have_content('http://wikipedia.org/Alan_Turing')
	end

end
