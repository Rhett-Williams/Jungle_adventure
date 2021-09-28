
class Character
    attr_reader :name, :race

    def initialize(name, race)
        @name = name
        @race = race
    end
end

class Warrior < Character
    def initialize(name, race)
        super(name, race)
    end
end

class Mage < Character
    def initialize(name, race)
        super(name, race)
    end
end

class Vendor < Character
    def initialize(name, race)
        super(name, race)
        @goods = []
        @gold = 1000
    end
end

conan = Warrior.new("Conan", "Human")
galdriel = Mage.new("Galdriel", "elf")
grok = Vendor.new("Grok", "Ork")

p conan.name
p galdriel