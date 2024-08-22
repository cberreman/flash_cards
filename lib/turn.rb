class Turn
    attr_reader :guess, :card

def initialize(guess, card)
        @guess = guess
        @card = card
    end

def correct?
    if @guess = card.answer
    
         @guess = true

    else 
         @guess = false

    end
end

def feedback
    if @guess = card.answer
        puts "Correct!"
    
    else 
        puts "Incorrect."

    end
end



end