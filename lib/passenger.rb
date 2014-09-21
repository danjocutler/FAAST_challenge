class Passenger

	def enough?()
		enough = true
	end

	def steal!
		puts "Sorry. Your credit is too low. Please top up"
		enough = false 
	end

	def pay!
		enough = true
	end

end