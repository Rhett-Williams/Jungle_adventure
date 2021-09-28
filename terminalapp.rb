class Direction
    attr_accessor :prompt, :answer, :answer2, :northsouth, :eastwest
    def initialize(prompt, answer, answer2, northsouth, eastwest)
         @prompt = prompt
         @answer = answer
         @northsouth = northsouth
         @eastwest = eastwest
         @answer2 = answer2
    end
end

class Character
    attr_accessor :name, :attack, :speech, :movement, :health
    def initialize(name, attack, speech, movement, health)
        @name = name
        @attack = attack
        @speech = speech
        @movement = movement
        @health = health
    end
end

class Interactibles
    attr_accessor :name, :attack, :speech, :movement, :intro, :damage, :escape
    def initialize(name, attack, speech, movement, intro, damage, escape)
        @name = name
        @attack = attack
        @speech = speech
        @movement = movement
        @intro = intro
        @damage = damage
        @escape = escape
    end
end

p21 = "** youve run into bees **"
p22 = "** the bess smacked ya **"
p23 = "** you got away from the bees **"

p31 = "** jaguar gotcha **"
p32 = "** jaguar ate you **"
p33 = "** slipped that kitty **"

p41 = "** tribes try kill u **"
p42 = "** tribes people spear you **"
p43 = "** tribes people 2 slow 4 u **"

playercharacter = [
    bill = Character.new("Bill", 4, 2, 3, 3), jill = Character.new("Jill", 3, 5, 2, 3), will = Character.new("Will", 2, 3, 5, 3)
]

$a_interactible = [
    bees = Interactibles.new("Bees!", 4, 5, 2, p21, p22, p23), jaguar = Interactibles.new("Jaguar", 5, 2, 4, p31, p32, p33), tribesman = Interactibles.new("Tribesman", 4, 3, 4, p41, p42, p43)
]

$a_nuisance = ($a_interactible.sample)

puts "Welcome to:\n░░░░░██╗██╗░░░██╗███╗░░██╗░██████╗░██╗░░░░░███████╗
░░░░░██║██║░░░██║████╗░██║██╔════╝░██║░░░░░██╔════╝
░░░░░██║██║░░░██║██╔██╗██║██║░░██╗░██║░░░░░█████╗░░
██╗░░██║██║░░░██║██║╚████║██║░░╚██╗██║░░░░░██╔══╝░░
╚█████╔╝╚██████╔╝██║░╚███║╚██████╔╝███████╗███████╗
░╚════╝░░╚═════╝░╚═╝░░╚══╝░╚═════╝░╚══════╝╚══════╝

░█████╗░██████╗░██╗░░░██╗███████╗███╗░░██╗████████╗██╗░░░██╗██████╗░███████╗
██╔══██╗██╔══██╗██║░░░██║██╔════╝████╗░██║╚══██╔══╝██║░░░██║██╔══██╗██╔════╝
███████║██║░░██║╚██╗░██╔╝█████╗░░██╔██╗██║░░░██║░░░██║░░░██║██████╔╝█████╗░░
██╔══██║██║░░██║░╚████╔╝░██╔══╝░░██║╚████║░░░██║░░░██║░░░██║██╔══██╗██╔══╝░░
██║░░██║██████╔╝░░╚██╔╝░░███████╗██║░╚███║░░░██║░░░╚██████╔╝██║░░██║███████╗
╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░░╚═════╝░╚═╝░░╚═╝╚══════╝"

p "Press any character to continue"
continue = gets

puts "Choose your character:\n
Bill           |    Jill           |    Will
Attack:#{bill.attack}       |    Attack:#{jill.attack}       |    Attack:#{will.attack}
Speech#{bill.speech}        |    Speech#{jill.speech}        |    Speech#{will.speech}
Movement:#{bill.movement}     |    Movement:#{jill.movement}     |    Movement:#{will.movement}"

def character_select(playercharacter)
    answer = gets.chomp()
        if answer == "Bill" || "Jill" || "Will"
            puts answer
            $a_playerselected = playercharacter.first()
        else
            character_select(playercharacter)
        end
end

character_select(playercharacter)

puts ", you wake up hungover in a jungle with a bunch of crazy stuff going on"

p1 = "What direction do you travel in?\n(N)North\n(E)East\n(S)South\n(W)West"

directions = [
    Direction.new(p1, "N", "A", 0, 0)
]

def run_travel(directions)
    answer = ""
    answer2 = ""
    for direction in directions
         puts direction.prompt
         answer = gets.chomp()
         if answer == direction.answer
              direction.northsouth += 1
              direction.eastwest += 0
         end
         if answer == "S"
            direction.northsouth += -1
            direction.eastwest += 0
         end
         if answer == "W" 
            direction.northsouth += 0
            direction.eastwest += -1
         end
         if answer == "E"
            direction.northsouth += 0
            direction.eastwest += 1
         end
    end
    puts "position #{direction.northsouth}, #{direction.eastwest}"
    case "#{direction.northsouth}, #{direction.eastwest}" 
    when "0, -3", "-1, -3", "-2, -2", "-3, -1", "-3 0", "-2, 1", "-2, 2", "-2, 3", "-3, 4", "-2, 5", "-1, 6", "0, 6", "1, 6", "2, 5", "3, 5", "4, 4", "3, 3", "2, 2", "2, 1", "3, 0", "3, -1", "2, -2", "1, -3" then
        if answer == "N"
            direction.northsouth += -1
        end
        if answer == "W"
            direction.eastwest += 1
        end
        if answer == "E"
            direction.eastwest += -1
        end
        if answer == "S"
            direction.northsouth += 1
        end
        puts "You've reached a vast ocean with no islands in sight, you can't go this way. \nposition #{direction.northsouth}, #{direction.eastwest}"
    end
    if direction.northsouth == 3 && direction.eastwest == 4
        puts "Congratulations! you've escaped"
    else
        puts "#{($a_interactible.sample).intro}\nPress A to attack\nPress S to speak\nPress R to run"
        answer2 = gets.chomp()
        if answer2 == "A"
            if ($a_interactible.sample).attack > $a_playerselected.attack
                $a_playerselected.health += -1
                puts "#{($a_interactible.sample).damage} \nhealth: #{$a_playerselected.health}" 
            else
                puts ($a_interactible.sample).escape
            end
        end
        if $a_playerselected.health > 0
            run_travel(directions)
        else
            puts "you died fool"
        end
    end
end

run_travel(directions)