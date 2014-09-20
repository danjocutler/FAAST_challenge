require 'train'

describe Train do

	def fill_train(train)
		train.capacity.times { train.add(coach) }
	end

	let(:train) {Train.new}
	let(:coach) {double :coach}

	it "should accept coaches" do
		expect(train.coach_count).to eq(0)
		train.add(coach)
		expect(train.coach_count).to eq(1)
	end

	it "should release coaches" do
		train.add(coach)
		train.release(coach)
		expect(train.coach_count).to eq(0)
	end

	it "should know when it reaches coach capacity" do
		fill_train train
		expect(train).to be_full
	end

	it "should not accept a coach if it's full" do
		fill_train train
		expect { train.add(coach) }.to raise_error "Coach capacity already full"
	end

	it "should not release a coach if it's empty" do
		expect { train.release(coach) }.to raise_error "You have no coaches to release!"
	end

end