class List

	def initialize(amount, randstop)
		@@amount = amount
		@@randstop = randstop
	end

	def makeArr
		i = 0
		arr = Array.new
		while i < @@amount do
			arr.push(rand(@@randstop))
			i = i+1
		end
		return arr
	end
end
