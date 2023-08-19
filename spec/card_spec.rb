RSpec.describe 'Card' do
    it 'has a type' do
        card = Card.new('Ace of spades')##The 'Ace of spade' <= the type of the card
        expect(card.type).to eq('Ace of spades')
    end
end