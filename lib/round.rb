class Round

    attr_reader :deck, :turns #:turn

def initialize(deck)
    @deck = deck
    @turns = []
   @number_correct = 0
    
    # @turn = turn
end 



def current_card
    #  require 'pry' ; binding.pry  
    @deck.cards.first
    # @deck.cards.shift?
    #displays current card in the deck
   
    
#    require 'pry' ; binding.pry 
end

def take_turn(guess)
#    require 'pry' ; binding.pry 
    new_turn = Turn.new(guess, current_card)

   if new_turn.correct? == true 
        @number_correct += 1
   end
   @deck.cards.shift
     @turns << new_turn 
        
   new_turn

end
end



    