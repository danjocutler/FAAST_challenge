class Train

	DEFAULT_CAPACITY = 6

	def coaches
		@coaches ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def coach_count()
		coaches.count
	end

	def add(coach)
		raise "Coach capacity already full" if full?
		coaches << coach
	end

	def release(coach)
		coaches.delete(coach)
	end

	def full?()
		coach_count == capacity
	end

end