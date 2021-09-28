class Direction
    attr_accessor :prompt, :answer, :northsouth, :eastwest
    def initialize(prompt, answer, northsouth, eastwest)
         @prompt = prompt
         @answer = answer
         @northsouth = northsouth
         @eastwest = eastwest
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
    attr_accessor :name, :attack, :speech, :movement, :intro
    def initialize(name, attack, speech, movement, intro)
        @name = name
        @attack = attack
        @speech = speech
        @movement = movement
        @intro = intro
    end
end

p2 = "youve run into bees"
p3 = "jaguar gotcha"
p4 = "tribes try kill u"

playercharacter = [
    bill = Character.new("Bill", 5, 2, 3, 3), jill = Character.new("Jill", 3, 5, 2, 3), will = Character.new("Will", 2, 3, 5, 3)
]

$a_interactible = [
    bees = Interactibles.new("Bees!", 4, 5, 2, p2), jaguar = Interactibles.new("Jaguar", 5, 2, 4, p3), tribesman = Interactibles.new("Tribesman", 4, 3, 4, p4)
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

playercharacters = gets.chomp()

if playercharacters == "Bill"
    playercharacter == playercharacter.first()
end

puts "\n#{playercharacter}, you wake up drunk in a jungle with a bunch of crazy stuff going on"

p1 = "What direction do you travel in?\n(N)North\n(E)East\n(S)South\n(W)West"

directions = [
    Direction.new(p1, "N", 0, 0)
]

def run_travel(directions)
    answer = ""
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
        puts ($a_interactible.sample).intro
        if answer == "A"
            if ($a_interactible.sample).attack > 1
            end
        end
        run_travel(directions)
    end
end

run_travel(directions)