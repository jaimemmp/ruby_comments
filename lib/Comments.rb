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

	def count_comments(movie_id)
		result = 0
		@@comments.each do |comment|
			if comment.movie_id == movie_id
				result += 1
			end
		end
		result
	end
end