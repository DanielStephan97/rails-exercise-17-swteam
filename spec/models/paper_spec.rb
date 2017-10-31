require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  it "should not validate without a Title" do
	@paper = paper
	@paper.title = nil
	expect(@paper).not_to be_valid
  end
  
  it "should not validate without a Venue" do
	@paper = paper
	@paper.venue = nil
	expect(@paper).not_to be_valid
  end
  
  it "should not validate without a Year" do
	@paper = paper
	@paper.year = nil
	expect(@paper).not_to be_valid
  end
  
  private 
  def paper
	FactoryGirl.create :paper
  end
  
end
