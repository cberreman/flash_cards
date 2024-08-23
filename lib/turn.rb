class Turn
    attr_reader :guess, :card

def initialize(guess, card)
        @guess = guess
        @card = card
    end

def correct?
    if @guess = card.answer
    
         guess = true

    elsif @guess != card.answer
        
        guess = false

    end
end

def feedback
    if guess = true
         "Correct!"
    
    elsif guess != false
         "Incorrect."

    end
end



end