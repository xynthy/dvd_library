Dvd = Struct.new :location, :title

class DvdsController < ApplicationController
	def in_library
		@dvds = [
			Dvd.new("Case 1 Page 1", "Star Wars Episode IV"),
			Dvd.new("Case 2 Page 2", "Star Trek")
		]
	end
end
