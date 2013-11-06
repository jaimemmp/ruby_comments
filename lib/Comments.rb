class Comments
	attr_accessor :id
	attr_accessor :user_id
	attr_accessor :movie_id
	attr_accessor :text

	def initialize(id,text,user_id,movie_id)
		@id = id
		@user_id = user_id
		@movie_id = movie_id
		@text = text
		@@comments ||= []
		@@comments << self
	end

	def self.empty ()
		@@coments = []
	end


	def count_comments(movie_id)
		result = 0
		@@comments.each do |comment|
			if comment.movie_id == movie_id
				result += 1
			end
		end
		result
	end
	def calc_distance(user_id_1,user_id_2)

		@@comments.each do |comment|
			if comment.user_id == user_id_1
				if search_more_comments(comment.movie_id,user_id_2)
					return 0
				else
					return 1
				end
			end
		end
	end

	def search_more_comments(movie_id,user_id)
		result = false
		@@comments.each do |comment|
			if (comment.movie_id == movie_id && comment.user_id == user_id)
				result = true
			end
		end
		result
	end


end