class Groomer
    attr_reader :customers
    def initialize(name)
        @customers = []
    end

    def add_customer(customer)
        @customers << customer
    end

end