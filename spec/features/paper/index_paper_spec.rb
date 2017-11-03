require "rails_helper"

describe "Index Paper page", type: :feature do

	it "should only show papers that satisfy the url filter" do
		
		@paper1 = FactoryGirl.create :paper
		@paper1.year = 1950
		@paper2 = FactoryGirl.create :paper
		@paper2.year = 1968
		visit papers_path(year: 1950)
		expect(page).not_to have_content("1968")
		expect(page).to have_content("1950")
	end

end