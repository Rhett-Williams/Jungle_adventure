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
    attr_accessor :name, :attack, :speech, :movement, :intro, :damage, :escape, :talked, :hint, :ran, :slow
    def initialize(name, attack, speech, movement, intro, damage, escape, talked, hint, ran, slow)
        @name = name
        @attack = attack
        @speech = speech
        @movement = movement
        @intro = intro
        @damage = damage
        @escape = escape
        @talked = talked
        @hint = hint
        @ran = ran
        @slow = slow
    end
end

p21 = "\n** You've run into BEES! **"
p22 = "\n** The bees sting you real bad and you're all out of ointment **"
p23 = "\n** You whip out your trusty Moretein can and kill all of the bees **"
p24 = "\n** The bees know you aren't looking for a long term relationship. They drug you and send you back one position **"
p25 = "\n** Holy shit you spoke to bees, they tell you the helicopter is located in the far north-east of the map, they also give you some honey wrapped loot **"
p26 = "\n** You run away from the bees **"
p27 = "\n** You try run but the bees catch you! You must face the Bees! **"

p31 = "\n** A JAGUAR has walked accross your path! **"
p32 = "\n** Jaguar bites you **"
p33 = "\n** You whip out a shotgun and kill the jaguar **"
p34 = "\n** The jungle cat has heard it all before. It chases you off its property. you get sent back one position"
p35 = "\n** The jaguar purrs and somehow draws a map to the far North-East of the map and gives you some stuff from its jaguar pouch **"
p36 = "\n** You start swinging through the trees like tarzan and escape the jaguar **"
p37 = "\n** You are fast but the jaguar is faster. You must face the jaguar **"

p41 = "\n** A tribe of natives finds you **"
p42 = "\n** The tribes people spear you **"
p43 = "\n** You kill an entire tribe of natives, you feel good about yourself? **"
p44 = "\n** The tribespeople understand you but think you sound like a nerd. They throw you into a nearby river and you get out one position back **"
p45 = "\n** The tribes people have seen the helicopter and tell you it's in the North-East of the map"
p46 = "\n** You ride away on a very fast scooter you find nearby"
p47 = "\n** The tribes people run you down. You must face the tribespeople"

playercharacter = [
    bill = Character.new("Bill", 4, 2, 3, 3), jill = Character.new("Jill", 3, 5, 2, 3), will = Character.new("Will", 2, 3, 5, 3)
]

$a_bill = Character.new("Bill", 4, 2, 3, 3)
$a_jill = Character.new("Jill", 3, 4, 2, 3)
$a_will = Character.new("Will", 2, 3, 4, 3)

$a_interactible = [
    bees = Interactibles.new("Bees!", 4, 5, 2, p21, p22, p23, p24, p25, p26, p27), jaguar = Interactibles.new("Jaguar", 5, 2, 4, p31, p32, p33, p34, p35, p36, p37), tribesman = Interactibles.new("Tribesman", 4, 3, 4, p41, p42, p43, p44, p45, p46, p47)
]

$a_bees = Interactibles.new("Bees!", 4, 5, 2, p21, p22, p23, p24, p25, p26, p27)
$a_jaguar = Interactibles.new("Jaguar", 5, 2, 4, p31, p32, p33, p34, p35, p36, p37)
$a_tribesman = Interactibles.new("Tribesman", 4, 3, 4, p41, p42, p43, p44, p45, p46, p47)

$a_nuisance = ($a_interactible.sample)

puts "Welcome to:
░░░░░██╗██╗░░░██╗███╗░░██╗░██████╗░██╗░░░░░███████╗
░░░░░██║██║░░░██║████╗░██║██╔════╝░██║░░░░░██╔════╝
░░░░░██║██║░░░██║██╔██╗██║██║░░██╗░██║░░░░░█████╗░░
██╗░░██║██║░░░██║██║╚████║██║░░╚██╗██║░░░░░██╔══╝░░
╚█████╔╝╚██████╔╝██║░╚███║╚██████╔╝███████╗███████╗
░╚════╝░░╚═════╝░╚═╝░░╚══╝░╚═════╝░╚══════╝╚══════╝
░█████╗░██████╗░██╗░░░██╗███████╗███╗░░██╗████████╗██╗░░░██╗██████╗░███████╗██╗
██╔══██╗██╔══██╗██║░░░██║██╔════╝████╗░██║╚══██╔══╝██║░░░██║██╔══██╗██╔════╝██║
███████║██║░░██║╚██╗░██╔╝█████╗░░██╔██╗██║░░░██║░░░██║░░░██║██████╔╝█████╗░░██║
██╔══██║██║░░██║░╚████╔╝░██╔══╝░░██║╚████║░░░██║░░░██║░░░██║██╔══██╗██╔══╝░░╚═╝
██║░░██║██████╔╝░░╚██╔╝░░███████╗██║░╚███║░░░██║░░░╚██████╔╝██║░░██║███████╗██╗
╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝"

p "Press ENTER to continue"
continue = gets

puts "Choose your character:\n
Bill           |    Jill           |    Will
Attack:#{bill.attack}       |    Attack:#{jill.attack}       |    Attack:#{will.attack}
Speech#{bill.speech}        |    Speech#{jill.speech}        |    Speech#{will.speech}
Movement:#{bill.movement}     |    Movement:#{jill.movement}     |    Movement:#{will.movement}"

def character_select(playercharacter)
    @answer = gets.chomp
        if @answer == "Bill"
            $a_playerselected = $a_bill
            puts $a_playerselected.name
        elsif @answer == "Jill"
            $a_playerselected = $a_jill
        elsif @answer == "Will"
            $a_playerselected = $a_will
        else
            character_select(playercharacter)
        end
end

character_select(playercharacter)

puts "\n#{@answer}, you wake up hungover in a jungle with a bunch of crazy stuff going on. The only thing you remember is helicoptering in. Your aim is to find where you parked it so you can escape. Use the present commands to navigate followed by ENTER.\n\n"

p1 = "\nWhat direction do you travel in?\nPress (N) for North\nPress (E) for East\nPress (S) for South\nPress (W) for West"

directions = [
    Direction.new(p1, "N", "A", 0, 0)
]

def run_travel(directions)
    answer = ""
    answer2 = ""
    gamin = []
    for direction in directions
         puts direction.prompt
         answer = gets.chomp()
         if answer == direction.answer
              direction.northsouth += 1
              direction.eastwest += 0
         elsif answer == "S"
            direction.northsouth += -1
            direction.eastwest += 0
         elsif answer == "W" 
            direction.northsouth += 0
            direction.eastwest += -1
         elsif answer == "E"
            direction.northsouth += 0
            direction.eastwest += 1
         else
            puts "that's not a direction?\n\n"
            run_travel(directions)
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
        def fightsequence(gamin)
            wheels = []
            deals = []
            steels = []
            if "#{($a_interactible.sample).name}" == "Bees!"
                def bees_fight(wheels)
                    boi = []
                    puts $a_bees.intro
                    puts "Press (A) to Fight\nPress (S) to Flirt\nPress (D) to Flee"
                    answer2 = gets.chomp()
                    if answer2 == "A"
                        if $a_bees.attack > $a_playerselected.attack
                            puts $a_bees.damage
                            $a_playerselected.health += -1
                            puts "Health: #{$a_playerselected.health}"
                        else
                            puts $a_bees.escape
                        end
                    end
                    if answer2 == "S"
                        if $a_bees.speech > $a_playerselected.speech
                            puts $a_bees.talked
                            if @answer == "N"
                                @@direction.northsouth += -1
                            end
                            if @answer == "W"
                                @@direction.eastwest += 1
                            end
                            if @answer == "E"
                                @@direction.eastwest += -1
                            end
                            if @answer == "S"
                                @@direction.northsouth += 1
                            end
                        else
                            $a_playerselected.speech += 1
                            puts "#{$a_bees.hint}\nSpeech: #{$a_playerselected.speech}"
                        end
                    end
                    if answer2 == "D"
                        def movement_reset(boi)
                            if $a_bees.movement > $a_playerselected.movement
                                puts $a_bees.slow
                                bees_fight(@wheels)
                            else
                                puts $a_bees.ran
                            end
                        end
                        movement_reset(boi)
                    end
                end
            bees_fight(wheels)
            end
            if "#{($a_interactible.sample).name}" == "Jaguar"
                def jaguar_fight(deals)
                    boi = []
                    puts $a_jaguar.intro
                    puts "Press (A) to Fight\nPress (S) to Flirt\nPress (D) to Flee"
                    answer2 = gets.chomp()
                    if answer2 == "A"
                        if $a_jaguar.attack > $a_playerselected.attack
                            puts $a_jaguar.damage
                            $a_playerselected.health += -1
                            puts "Health: #{$a_playerselected.health}"
                        else
                            puts $a_jaguar.escape
                        end
                    end
                    if answer2 == "S"
                        if $a_jaguar.speech > $a_playerselected.speech
                            puts $a_jaguar.talked
                            if @answer == "N"
                                @@direction.northsouth += -1
                            end
                            if @answer == "W"
                                @@direction.eastwest += 1
                            end
                            if @answer == "E"
                                @@direction.eastwest += -1
                            end
                            if @answer == "S"
                                @@direction.northsouth += 1
                            end
                        else
                            $a_playerselected.speech += 1
                            puts "#{$a_jaguar.hint}\nSpeech: #{$a_playerselected.speech}"
                        end
                    end
                    if answer2 == "D"
                        def movement_reset1(boi)
                            if $a_jaguar.movement > $a_playerselected.movement
                                puts $a_jaguar.slow
                                jaguar_fight(@deals)
                            else
                                puts $a_jaguar.ran
                            end
                        end
                        movement_reset1(boi)
                    end
                end
            jaguar_fight(deals)
            end
            if "#{($a_interactible.sample).name}" == "Tribesman"
                def tribesman_fight(steels)
                    boi = []
                    puts $a_tribesman.intro
                    puts "Press (A) to Fight\nPress (S) to Flirt\nPress (D) to Flee"
                    answer2 = gets.chomp()
                    if answer2 == "A"
                        if $a_tribesman.attack > $a_playerselected.attack
                            puts $a_tribesman.damage
                            $a_playerselected.health += -1
                            puts "Health: #{$a_playerselected.health}"
                        else
                            puts $a_tribesman.escape
                        end
                    end
                    if answer2 == "S"
                        if $a_tribesman.speech > $a_playerselected.speech
                            puts $a_tribesman.talked
                            if @answer == "N"
                                @@direction.northsouth += -1
                            end
                            if @answer == "W"
                                @@direction.eastwest += 1
                            end
                            if @answer == "E"
                                @@direction.eastwest += -1
                            end
                            if @answer == "S"
                                @@direction.northsouth += 1
                            end
                        else
                            $a_playerselected.speech += 1
                            puts "#{$a_tribesman.hint}\nSpeech: #{$a_playerselected.speech}"
                        end
                    end
                    if answer2 == "D"
                        def movement_reset2(boi)
                            if $a_tribesman.movement > $a_playerselected.movement
                                puts $a_tribesman.slow
                                tribesman_fight(@steels)
                            else
                                puts $a_tribesman.ran
                            end
                        end
                        movement_reset2(boi)
                    end
                end
            tribesman_fight(steels)
            end

        end
        fightsequence(gamin)
        if $a_playerselected.health > 0
            run_travel(directions)
        else
            puts "Between the bees and the hangover, it is all too much to go on. See you in the next playthrough #{$a_playerselected.name}"
        end
    end
end

run_travel(directions)