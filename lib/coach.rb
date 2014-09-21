class Coach

	PASSENGER_CAPACITY = 40

	def pax
		@pax ||= []
	end

	def capacity
		@capacity ||= PASSENGER_CAPACITY		
	end

	def add(passenger)
		raise "Sorry. This coach is already full" if full?
		pax << passenger
	end

	def alight(passenger)
		pax.delete(passenger)
	end

	def passenger_count()
		pax.count
	end

	def full?()
		passenger_count == capacity
	end

end