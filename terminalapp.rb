class Direction
    attr_accessor :prompt, :answer, :northsouth, :eastwest
    def initialize(prompt, answer, northsouth, eastwest)
         @prompt = prompt
         @answer = answer
         @northsouth = northsouth
         @eastwest = eastwest
    end
end

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

name = ""
print "What is your name? "
name = gets
puts "\n#{name}, you find yourself trapped in a jungle with a bunch of crazy stuff going on. You must work your way through the map and attempt to find a helicopter."

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
        run_travel(directions)
    end
end

run_travel(directions)
