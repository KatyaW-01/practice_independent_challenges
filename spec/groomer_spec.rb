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
        it 'has customers' do
            expect(@groomer.customers).to eq([])

            @groomer.add_customer(@customer_1)
            @groomer.add_customer(@customer_2)

            expect(@groomer.customers).to eq([@customer_1,@customer_2])
        end
    end
    
end
    
   
