class Passenger


	def initialize
		top_up!
	end

	def enough?
		@enough
	end

	def lose_money!
		@enough = false
		self
	end

	def top_up!
		@enough = true
		self
	end

end