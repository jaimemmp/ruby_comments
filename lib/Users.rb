class Users
	attr_accessor :id

	def initialize(id)
		@id = id
		@@users ||= []
		@@users << self
	end
end