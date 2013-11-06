class Users
	attr_accessor :id
	attr_accessor :favorites

	def initialize(id)
		@id = id
		@favorites = []
		@@users ||= []
		@@users << self
	end

	def self.empty ()
		@@users = []
	end

end