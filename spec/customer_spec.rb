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

        it 'has an id' do
            expect(@joel.id).to eq(2)
        end
    end
    describe "#adopt pets" do
        it 'has an empty array of pets' do
            expect(@joel.pets).to eq([])
        end

        it 'can adopt pets' do
            @joel.adopt(@samson)
            @joel.adopt(@lucy)

            expect(@joel.pets).to eq([@samson,@lucy])
        end

        it 'can collect charges for pets' do
            expect(@joel.outstanding_balance).to eq(0)

            @joel.charge(15)
            @joel.charge(7)

            expect(@joel.outstanding_balance).to eq(22)

        end
    end

end