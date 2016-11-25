require_relative 'spaceship'

describe Spaceship do
	let(:spaceship_1) { Spaceship.new("USS Enterprise (NCC-1701)", 671000000)}

	it "disables the shields is false" do
		expect(spaceship_1.disable_shield).to be false
	end

	it "enables the shields is true" do
		expect(spaceship_1.enable_shield).to be true
	end

	it "has a new location" do
		spaceship_1.warp_to("The Neutral Zone")
		expect(spaceship_1.location).to eq("The Neutral Zone")
	end

	it "can give the weight of an item" do
		expect(spaceship_1.item_weight("cow")).to eq(329)
	end

	it "should enable tractor beam" do
		expect(spaceship_1.tractor_beam("cow")).to be true
	end

	it "should give the total weight of the cargo" do
		spaceship_1.pickup("Humpback Whale", "Earth 1986")
		spaceship_1.pickup("Guardian of Forever", "Unkown Planet")
		spaceship_1.pickup("Spock", "Genesis")
		spaceship_1.pickup("Tribbles", "Deep Space Station K7")
		expect(spaceship_1.total_weight).to eq(4492)
	end
	
end