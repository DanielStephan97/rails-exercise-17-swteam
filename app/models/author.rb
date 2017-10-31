class Author < ActiveRecord::Base

	def name
		first_name + " " + last_name
	end

	validates :last_name, presence: true
	
	has_many :papers
	
end
