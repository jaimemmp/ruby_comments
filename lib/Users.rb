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

	def self.calc_distance(user1,user2)
		range = 0
		users = []
		users_tmp = []
		users = self.get_dist_zero(user1)
		match = users.include? user2
		while match == false && range < 3
			
			users.each do |user|
				
				users_tmp << self.get_dist_zero(user)
							
			end	
			users = users_tmp.flatten
			match = users.include? user2
			range+=1
		end
		range
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