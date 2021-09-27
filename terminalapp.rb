class Direction
    attr_accessor :prompt, :answer, :northsouth, :eastwest, :wall1, :wall2, :wall3, :wall4, :wall5, :wall6, :wall7, :wall8, :wall9, :wall10, :wall11, :wall12, :wall13, :wall14, :wall15, :wall16, :wall17, :wall18, :wall19, :wall20, :wall21, :wall22, :wall23
    def initialize(prompt, answer, northsouth, eastwest, wall1, wall2, wall3, wall4, wall5, wall6, wall7, wall8, wall9, wall10, wall11, wall12, wall13, wall14, wall15, wall16, wall17, wall18, wall19, wall20, wall21, wall22, wall23)
         @prompt = prompt
         @answer = answer
         @northsouth = northsouth
         @eastwest = eastwest
         @wall1 = wall1
         @wall2 = wall2
         @wall3 = wall3
         @wall4 = wall4
         @wall5 = wall5
         @wall6 = wall6
         @wall7 = wall7
         @wall8 = wall8
         @wall9 = wall9
         @wall10 = wall10
         @wall11 = wall11
         @wall12 = wall12
         @wall13 = wall13
         @wall14 = wall14
         @wall15 = wall15
         @wall16 = wall16
         @wall17 = wall17
         @wall18 = wall18
         @wall19 = wall19
         @wall20 = wall20
         @wall21 = wall21
         @wall22 = wall22
         @wall23 = wall23
    end
end

p1 = "What direction do you travel in?\n(N)North\n(E)East\n(S)South\n(W)West"

directions = [
    Direction.new(p1, "N", 0, 0, "0, -3", "-1, -3", "-2, -2", "-3, -1", "-3 0", "-2, 1", "-2, 2", "-2, 3", "-3, 4", "-2, 5", "-1, 6", "0, 6", "1, 6", "2, 5", "3, 5", "4, 4", "3, 3", "2, 2", "2, 1", "3, 0", "3, -1", "2, -2", "1, -3")
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
    when direction.wall1, direction.wall2, direction.wall3, direction.wall4, direction.wall5, direction.wall6, direction.wall7, direction.wall8, direction.wall9, direction.wall10, direction.wall11, direction.wall12, direction.wall13, direction.wall14, direction.wall15, direction.wall16, direction.wall17, direction.wall18, direction.wall19, direction.wall20, direction.wall21, direction.wall22, direction.wall23 then
        puts "You've reached a vast ocean with no islands in sight, you can't go this way."
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
    end
    if direction.northsouth == 3 && direction.eastwest == 4
        puts "ligma"
    else
        run_travel(directions)
    end
end

run_travel(directions)
