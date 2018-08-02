def character_select(pick)
	characters = ["Mario", "Luigi", "Peach", "Toad", "Yoshi", "D.K.", "Wario", "Bowser"]
	characters.select do |character|
	character == pick
	end
end
 # => ["Wario"] 


def red_shell(user)
	from_back = ["D.K.", "Yoshi", "Luigi", "Mario", "Toad", "Peach", "Wario", "Bowser"]
	from_back.find do |player|
		from_back.index(user) < from_back.index(player)
	end
end
 # => "Mario" 


toad_opponents = ["Yoshi", "Mario", "D.K.", "Luigi", "Bowser", "Wario", "Peach"]

def lightening(toad_opponents)
	toad_opponents.map do |opponent|
		"little " + opponent 
	end
end
 # => ["little Yoshi", "little Mario", "little D.K.", "little Luigi", "little Bowser", "little Wario", "little Peach"] 

courses = ["Luigi's Raceway", "Moo Moo Farm", "Koopa Troopa Beach", "Kalimari Desert"]

def mushroom_cup(courses)
	courses.each do |course|
		puts "Now loading #{course}!"
	end
end
# => ["Luigi's Raceway", "Moo Moo Farm", "Koopa Troopa Beach", "Kalimari Desert"]

puts character_select("Wario")
puts red_shell("Luigi")
puts lightening(toad_opponents)
puts mushroom_cup(courses)

puts "It's-a-me, Mario!"