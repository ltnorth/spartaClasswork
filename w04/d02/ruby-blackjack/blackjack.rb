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

def hit_me(array, deck)
	array.push(deck.shift)
end

# Bust check
def card_value(string)
	value = string.split(' ')[0]
	if(value == "A")
		11
	elsif(value == "Jack" || value == "Queen" || value == "King")
		10
	else
		value.to_i
	end
end

def add_card_values(array)
	count = 0
	array.select do |card|
		count += card_value(card)
	end
	count
end

def check_bust(total)
	if(total > 21)
		true
	else
		false
	end
end

# Quit check
def quit
	puts "Do you want to play again? (Y) or (N)"
	if(gets.chomp.upcase == "N")
		true
	else
		false
	end
end

# Running commands


def run
	check = true
	while(check)
		player_hand = []
		comp_hand = []
		deck = build_deck
		deal_cards(player_hand, comp_hand, deck)
		sleep 1
		puts "Your hand:\n #{player_hand}"
		sleep 1.5
		puts "My hand: \n #{comp_hand}"
		player_total = add_card_values(player_hand)
		comp_total = add_card_values(comp_hand)
		sleep 2
		if(player_total > comp_total)
			puts "You have won with a total of #{player_total} to my #{comp_total}"
		else
			puts "I have won with a total of #{comp_total} to your #{player_total}"
		end
		sleep 2
		check = !quit()
	end
end



run












