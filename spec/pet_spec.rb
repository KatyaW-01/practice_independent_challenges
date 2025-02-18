require './lib/pet'

RSpec.describe Pet do
    it 'exists' do
        samson = Pet.new({name: "Samson", type: :dog, age: 3}) 

        expect(samson).to be_a(Pet)
    end
end