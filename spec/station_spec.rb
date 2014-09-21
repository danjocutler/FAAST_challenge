require 'station'

describe Station do 
	
	let(:station) {Station.new}
	let(:train) {double :train}
	let(:passenger) {double :passenger}

	it "should accept passengers" do
		station.add(passenger)
		expect(station.passenger_count).to eq(1)
	end

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