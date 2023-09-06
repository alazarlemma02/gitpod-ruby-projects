require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "#validation" do
    #association test
    it{should have_many(:book)}
    #validation test
    it{should validate_presence_of(:name)}
    it{should validate_length_of(:name).is_at_least(3)}
  end

end
