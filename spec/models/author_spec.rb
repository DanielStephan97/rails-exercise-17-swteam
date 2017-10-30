require 'rails_helper'

RSpec.describe Author, type: :model do
  
	it "should by an instance of Author" do
		@author = author
		expect(@author.first_name).to eq("Alan")
		expect(@author.last_name).to eq("Turing")
		expect(@author.homepage).to eq("http://wikipedia.org/Alan_Turing")
	end
	
	it "should return the full name if the name method is called" do
		@author = author
		expect(@author.name).to eq("Alan Turing")
	end
		
	it "sould not validate without a Last name" do
		@author = author
		@author.last_name = nil
		expect(@author).not_to be_valid
	end
		
	private
	def author
		FactoryGirl.create :author
	end
end
