class Train

	DEFAULT_CAPACITY = 6

	def coaches
		@coaches ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def coach_count()
		coaches.count
	end

	def add(coach)
		raise "Coach capacity already full" if full?
		coaches << coach
	end

	def release(coach)
		raise "You have no coaches to release!" if empty?
		coaches.delete(coach)
	end

	def full?()
		coach_count == capacity
	end

	def empty?()
		coach_count == (0)
	end

end