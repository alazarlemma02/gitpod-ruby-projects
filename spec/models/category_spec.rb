require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "validation + association test for cateogry model" do
    #association test
    context "association test" do
      it{should have_many(:book)}
    end
    #validation test
    context "validation test" do
      it{should validate_presence_of(:name)}
      it{should validate_length_of(:name).is_at_least(3)}
    end

  end

end
