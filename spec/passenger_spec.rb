require 'passenger'

describe Passenger do 
	let(:passenger) {Passenger.new}

	it "should have at least £2.00 when created" do
		expect(passenger.enough?).to be true
	end

	it "should be able to lose money" do
		expect(passenger.lose_money!.enough?).to be false
	end

	it "should be able to receive enough money" do
		expect(passenger.lose_money!.top_up!.enough?).to be true
	end

end