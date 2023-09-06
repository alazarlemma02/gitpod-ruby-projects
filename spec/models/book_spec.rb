require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "#association + validation test for book model" do
    #association test'
    context "association test" do
      it{should belong_to(:category) }
    end
    #validation test
    context "validation test" do
      it{should validate_presence_of(:title)}
      it{should validate_presence_of(:author)}
      it{should validate_length_of(:title).is_at_least(3)}
    end
  end
end
