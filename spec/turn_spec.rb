require './lib/turn'
require './lib/card'

RSpec.describe Turn do
it 'exists' do 
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)    
    turn = Turn.new("Juneau", card)
    
    expect(turn).to be_instance_of(Turn)
end

it 'has a guess' do 
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)        
    turn = Turn.new("Juneau", card)
    #  require 'pry' ; binding.pry   
    expect(turn.guess).to eq('Juneau')
end

it 'guess is true if same as answer' do 
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)        
    turn = Turn.new("Juneau", card)
    # require 'pry' ; binding.pry    
    expect(turn.guess).to eq(card.answer)
end

it 'feedback prints correct when guess is true' do 
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)        
    turn = Turn.new("Juneau", card)
    #  require 'pry' ; binding.pry   
    expect(turn.guess).to eq(card.answer)
end

end
    