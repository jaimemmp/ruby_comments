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