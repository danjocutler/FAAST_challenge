require 'coach'

describe Coach  do

	def fill_coach(coach)
		coach.capacity.times {coach.add(passenger) }
	end

	let(:coach) {Coach.new}
	let(:passenger) {double :passenger}

	it "should accept passengers" do
		coach.add(passenger)
		expect(coach.passenger_count).to eq(1)
	end

	it "should allow passengers to alight" do
		coach.add(passenger)
		coach.alight(passenger)
		expect(coach.passenger_count).to eq(0)
	end

	it "should know when it is full" do
		fill_coach coach
		expect(coach).to be_full
	end

	it "should not accept more passengers after it is full" do
		fill_coach coach
		expect {coach.add(passenger) }.to raise_error "Sorry. This coach is already full"
	end
	
end