require 'station'

describe Station do 
	
	let(:station) {Station.new}
	let(:train) {double :train}
	let(:passenger) {double :passenger}

	# it "should only accept passengers who have min. balance (£2.00)" do
	# 	rich_pax, poor_pax = Passenger.new, Passenger.new
	# 	poor_pax.steal!
	# 	station.add(rich_pax)
	# 	station.add(poor_pax)
	# 	expect(station.pax_good).to eq([rich_pax])
	# end

	it "should alight passengers" do
		station.add(passenger)
		station.alight(passenger)
		expect(station.passenger_count).to eq(0)
	end

	it "should accept trains" do
		station.accept(train)
		expect(station.train_count).to eq(1)
	end

	it "should release trains" do
		station.accept(train)
		station.release(train)
		expect(station.train_count).to eq(0)
	end

	it "should only allow one train in a station at a time" do
		station.capacity.times {station.accept(train) }
		expect { station.accept(train) }.to raise_error "Please wait for other train to leave the station"
	end

end