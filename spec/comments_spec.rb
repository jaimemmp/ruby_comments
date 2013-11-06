require_relative "../lib/Movies"
require_relative "../lib/Users"
require_relative "../lib/Comments"

describe "related comments sistem" do
	before :each do 
		Comments.empty
	end

	it "post a comment" do
		comments = Comments.new(1,"awesome",1,1)
		expect(comments.count_comments(1)).to eq(1)
	end

	it "Calc distance betwen 2 users with distance 0" do
		comments = Comments.new(1,"awesome",444,1)
		comments = Comments.new(2,"awesome too",555,1)

		distance = comments.calc_distance(444,555)
		expect(distance).to eq(0)
	end

	it "Calc distance betwen 2 users with distance 1" do
		comments = Comments.new(1,"awesome",444,1)
		comments = Comments.new(2,"awesome too",555,1)
		comments = Comments.new(3,"awesome too",555,2)
		comments = Comments.new(4,"awesome too",333,2)

		distance = comments.calc_distance(444,333)
		expect(distance).to eq(1)
	end

end


describe "favorites sistem" do
	before :each do 
		Users.empty
	end

	it "check single user without favorites" do
		user = Users.new(1)
		expect(user.favorites.length).to eq(0)
	end

	it "check single user with one favorite" do
		user = Users.new(1)
		user.favorites << 1
		expect(user.favorites[0]).to eq(1)
	end

	it "check single user with more than one favorite" do
		user = Users.new(1)
		user.favorites << 1
		user.favorites << 2
		user.favorites << 3
		expect(user.favorites).to eq([1,2,3])
	end


end