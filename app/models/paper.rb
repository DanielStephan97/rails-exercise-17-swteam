class Paper < ActiveRecord::Base

	validates :title, presence: true
	
	validates :venue, presence: true
	
	validates :year, presence: true, numericality: {only_integer: true}

	has_and_belongs_to_many :authors
	
	scope :filter_year, -> (year) { where("year == ?", year) if year.present?}
	
end
