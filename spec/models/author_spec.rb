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
		
	private
	def author
		Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
	end
end
