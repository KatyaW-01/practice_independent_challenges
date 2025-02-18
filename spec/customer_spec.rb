require './lib/customer'
require './lib/pet'

RSpec.describe Customer do
    before(:each) do
        @joel = Customer.new("Joel", 2)
        @samson = Pet.new({name: "Samson", type: :dog, age: 3})
        @lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
    end
    describe "#initialize" do
        it 'exists' do
            expect(@joel).to be_a(Customer)
        end
        it 'has a name' do
            expect(@joel.name).to eq("Joel")
        end
    end

end