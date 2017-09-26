# Make the deck of cards
def build_deck
	deck = ["A spade", "A club", "A heart", "A diamond"]
	# count = 4
	for num in 2..10
		deck.push( "#{num} spade" )
		deck.push( "#{num} club" )
		deck.push( "#{num} heart" )
		deck.push( "#{num} diamond" )
		# count+=4
	end
	pictures = ["Jack", "Queen", "King"]
	pictures.select do |picture|
		deck.push("#{picture} spade")
		deck.push("#{picture} club")
		deck.push("#{picture} heart")
		deck.push("#{picture} diamond")
		# count+=4
	end
	deck.shuffle
	# puts count
end

# Shuffle deck
def shuffle(deck)
	deck.shuffle
end

# Deal cards
def deal_cards(array1, array2, deck)
	2.times do
		array1.push(deck.shift)
		array2.push(deck.shift)
	end
end

# Bust check


# Win check


# Running commands
player_hand = []
comp_hand = []
deck = build_deck
deal_cards(player_hand, comp_hand, deck)


















