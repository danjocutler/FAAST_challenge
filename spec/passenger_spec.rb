require 'passenger'

describe Passenger  do
	
	let(:passenger) {Passenger.new}

	it "has the minimum £2.00 required to enter the station" do
		expect(passenger).to be_enough
	end

	it "should be warned if their account is too low" do
		expect { (passenger.steal!) }.to raise_error "Sorry. Your credit is too low. Please top up"
	end
end