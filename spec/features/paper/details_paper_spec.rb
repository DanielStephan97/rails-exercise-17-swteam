require "rails_helper"

describe "Paper details page", type: :feature do

	it "should show the author's name if the Paper has an author" do
		@paper = FactoryGirl.create :paper
		@author = FactoryGirl.create :author
		@paper.authors = [@author]
		expect(page).to have_content("Alan Turing")
	end

end
