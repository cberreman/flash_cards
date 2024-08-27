require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'


RSpec.describe Round do
    
       before(:each) do #instantiate all variables before running tests
        @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)   
        @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        @cards = [@card_1, @card_2, @card_3] 
        @deck = Deck.new(@cards)
        @round = Round.new(@deck)
       
       end  


    it 'exists' do 
        expect(@round).to be_instance_of(Round)
       end

    it 'has a deck' do 
        expect(@round.deck).to eq(@deck)
    end
    
    
    it 'has an array for turns' do 
       expect(@round.turns).to eq([])
    end

    it 'returns current card' do 
       expect(@round.current_card).to eq(@card_1)
    end

    it 'can take new turn' do
          
        new_turn = @round.take_turn("Juneau")
        # require 'pry' ; binding.pry 
        expect(new_turn.class).to eq(Turn)
        expect(new_turn.correct?).to eq(true)
        expect(@round.turns).to eq([new_turn])
    end

    # it 'will push turn instance to turns array' do
    #     @round.take_turn("Mexico") 
    #     expect(@round.turns.length).to eq(1)

    # end





end







