require "rails_helper"

describe "Paper details page", type: :feature do

	it "should show the Author's name if the Paper has an Author" do
		@paper = FactoryGirl.create :paper
		@author = FactoryGirl.create :author
		@paper.authors << @author
		visit paper_path(@paper)
		expect(page).to have_content("Alan Turing")
	end

end
