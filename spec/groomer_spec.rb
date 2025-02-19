require './lib/customer'
require './lib/pet'
require './lib/groomer'

RSpec.describe Groomer do
    before(:each) do
        @groomer = Groomer.new("Dog and Cat Groomer")
        @customer_1 = Customer.new("Joel",1)
        @customer_2 = Customer.new("Samantha",2)
    end
    describe "#initialize" do
        it 'exists' do
            expect(@groomer).to be_a(Groomer)
        end
        it 'has a name' do
            expect(@groomer.name).to eq("Dog and Cat Groomer")
        end
        it 'has customers' do
            expect(@groomer.customers).to eq([])

            @groomer.add_customer(@customer_1)
            @groomer.add_customer(@customer_2)

            expect(@groomer.customers).to eq([@customer_1,@customer_2])
        end
        it 'has customers with multiple pets' do
            miso = Pet.new({name: "Miso", type: :cat, age: 1})
            celery = Pet.new({name: "Celery", type: :cat, age: 1})

            @customer_1.adopt(miso)
            @customer_1.adopt(celery)

            expect(@customer_1.pets).to eq([miso,celery])
        end
        it 'can find customers with outstanding balances' do
            @groomer.add_customer(@customer_2)
            @customer_2.charge(20)

            expect(@groomer.find_outstanding_balances).to eq([@customer_2])
        end

        it 'can count the number of pets of a given type' do
            @groomer.add_customer(@customer_1)
            @groomer.add_customer(@customer_2)

            miso = Pet.new({name: "Miso", type: :cat, age: 1})
            celery = Pet.new({name: "Celery", type: :cat, age: 1})

            zuko = Pet.new({name: "Zuko", type: :dog, age: 5})

            @customer_1.adopt(miso)
            @customer_1.adopt(celery)

            @customer_2.adopt(zuko)

            expect(@groomer.count_pet_type(:cat)).to eq(2)
            expect(@groomer.count_pet_type(:dog)).to eq(1)

        end
        
    end
    
end
    
   
