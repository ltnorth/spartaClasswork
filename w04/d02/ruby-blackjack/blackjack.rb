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
	# puts count
end

# # Shuffle deck
# def shuffle(deck)
# 	deck.shuffle
# end

# Deal cards
def deal_cards(array1, array2, deck)
	2.times do
		array1.push(deck.shift)
		array2.push(deck.shift)
	end
end


# Bust check
def card_value(string)
	value = string.split(' ')[0]
	if(value == "A")
		11
	elsif(["Jack", "Queen", "King"].include? value)
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

# Playing methods
def hit_me(array, deck)
	array.push(deck.shift)
end

def player_turn(array, deck)
	puts "You have: #{array}; and a total of #{add_card_values(array)}."
	puts "Do you want to (s)tick or (t)wist?"
	if(gets.chomp == "t")
		hit_me(array, deck)
		true
	else
		false
	end
end

def comp_turn(array, deck)
	if(add_card_values(array) < 16)
		hit_me(array, deck)
		true
	else
		false
	end
end


# Quit check
def quit
	puts "Do you want to play again? (Y) or (N)"
	if(gets.chomp.upcase == "N")
		false
	else
		true
	end
end

# Running commands


def run
	check = true
	puts "*** Welcome to blackjack ***"
	deck = build_deck
	while(check)
		player_hand = []
		comp_hand = []
		deck = deck.shuffle!
		deal_cards(player_hand, comp_hand, deck)
		q = true
		while q
			q = player_turn(player_hand, deck)
			if(check_bust(add_card_values(player_hand)))
				puts "You have bust!"
				q = false
				ploss = true
			end
		end

		if(!ploss)
			while !q
				q = comp_turn(comp_hand, deck)
				if(check_bust(add_card_values(comp_hand)))
					puts "I have bust!"
					q = true
					closs = true
				end
			end
		end
		if(add_card_values(player_hand) > add_card_values(comp_hand))
			puts "You have won with #{add_card_values(player_hand)} to my #{add_card_values(comp_hand)}"
		else
			puts "I have won with #{add_card_values(comp_hand)} to my #{add_card_values(player_hand)}"
		end
		check = !quit()
	end
end



run












