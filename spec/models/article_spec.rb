require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:new_article) {Article.new }
  describe "#validation" do
    it "validates article" do
        expect(new_article).not_to be_valid
    end
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:content)}
    it {should validate_presence_of(:slug)}
  end
  describe '.recent' do
    it 'should return the recent article in order' do
      older__article = create :article
      newer_article = create :article
      expect(described_class.recent).to eq(
        [newer_article, older__article]
      )
      
    end
  end
end
