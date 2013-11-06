class Movies
	
	attr_accessor :title

	def initialize(title)
		@title = title
		@@movies ||= []
		@@movies << self
	end

end