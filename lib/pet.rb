class Pet
    attr_reader :name, :type, :age
    def initialize(pet_information)
        @name = pet_information[:name]
        @type = pet_information[:type]
        @age = pet_information[:age]
        @fed = false
    end

    def fed?
        @fed
    end

    def feed
        @fed = true
    end
end