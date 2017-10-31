require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  it "should not validate without a Title" do
	expect(Paper.create()).not_to be_valid
  end
  
end
