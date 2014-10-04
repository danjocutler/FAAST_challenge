class Station

	TRAIN_CAPACITY = 1

	def trains
		@trains ||= []
	end

	def capacity
		@capacity ||= TRAIN_CAPACITY
	end

	def accept(train)
		raise "Please wait for other train to leave the station" if full?
		trains << train
	end

	def train_count()
		trains.count
	end

	def release(train)
		trains.delete(train)
	end

	def full?()
		train_count == capacity
	end

	def pax
		@pax ||= []
	end

	def add(passenger)
		raise "Your balance is too low. Please top up" if passenger.enough? == false
		pax << passenger
	end

	def passenger_count()
		pax.count
	end

	def alight(passenger)
		pax.delete(passenger)
	end

end
