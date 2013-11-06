class Users
	attr_accessor :favorites

	def initialize()
		@favorites = []
		@@users ||= []
		@@users << self
	end

	def self.empty ()
		@@users = []
	end

	def self.calc_distance(user1, user2)
		intersection = user1.favorites & user2.favorites
		!intersection.empty?
	end
end