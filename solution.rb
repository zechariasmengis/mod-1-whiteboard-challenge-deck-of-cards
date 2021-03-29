require 'pry'

class Deck

    attr_accessor :array

    stack_of_cards = []

    def initialize(array_arg)
        @array = array_arg
    end

    def choose_card
        @array.delete_at(rand(array.length))
    end
end

class Card

    attr_reader :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def make_deck
        ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
        suits = %w{Spades Hearts Diamonds Clubs}
            suits.each do |suit|
                ranks.size.times do |i|
                    stack_of_cards << Card.new( ranks[i], suit, i+1 )
                    binding.pry
                end
            end
    end


end
