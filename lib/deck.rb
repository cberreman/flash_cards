


class Deck

    attr_reader :cards

def initialize(cards)
    @cards = cards
    @card_category = []
end

def cards 
    
    []

end

def count
    @cards.length
end

def cards_in_category(category)
   # :geography
    # have/givens: inside deck class, we have cards plural
    # pull a single card
    # check category to see if it matches the category we are given
    # if it matches
        # put it in a pile
    # if it doesn't
        # we don't care
    #
    # 


   x = @cards.find_all do |card|
         card.category == category
        
        
    end
    #   require 'pry' ; binding.pry 
end
    
   
 


end

