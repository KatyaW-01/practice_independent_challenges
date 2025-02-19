require 'pry'
class Groomer
    attr_reader :name, :customers, :customers_with_outstanding_balance
    def initialize(name)
        @name = name
        @customers = []
        @customers_with_outstanding_balance = []
        
    end

    def add_customer(customer)
        @customers << customer
    end

    def find_outstanding_balances
        @customers.find_all do |customer|
            customer.outstanding_balance > 0
            @customers_with_outstanding_balance << customer
        end
    end

    def count_pet_type(pet_type)
        pets = @customers.map do |customer|
            customer.pets  
        end
        pets.flatten.count do |pet|
           pet.type == pet_type
        end
    end

end