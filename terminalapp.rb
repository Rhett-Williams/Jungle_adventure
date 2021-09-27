class Direction
    attr_accessor :prompt, :answer, :northsouth, :eastwest
    def initialize(prompt, answer, northsouth, eastwest)
         @prompt = prompt
         @answer = answer
         @northsouth = northsouth
         @eastwest = eastwest
    end
end

p1 = "What direction do you travel in?\n(N)North\n(E)East\n(S)South\n(W)West"
p2 = "What color are bananas?\n(a) Red/Green\n(b)Yellow"

directions = [
    Direction.new(p1, "N", 0, 0),
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
    if direction.northsouth == 3 && direction.eastwest == 5
        puts "ligma"
    else
        run_travel(directions)
    end

end

run_travel(directions)

