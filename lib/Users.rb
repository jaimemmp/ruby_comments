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
		match_user_1 = self.get_dist_zero(user1)
		if match_user_1.include? user2
			return 0
		else
			match_user_2 = self.get_dist_zero(user2)
			if !(match_user_1 & match_user_2).empty?
				return 1
			end
		end

	end

	def self.get_dist_zero(user1)
		match = []
		@@users.each do |user|
			if !(user1.favorites & user.favorites).empty? && user != user1
				match << user
			end
		end
		return match
	end

end