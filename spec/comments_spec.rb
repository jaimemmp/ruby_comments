require_relative "../lib/Movies"
require_relative "../lib/Users"
require_relative "../lib/Comments"

describe "related comments sistem" do
	it "post a comment" do
		comments = Comments.new(1,"awesome",1,1)
		expect(comments.count_comments(1)).to eq(1)
	end
	it "Calc distance betwen 2 users" do
		comments = Comments.new(1,"awesome",444,1)
		comments = Comments.new(2,"awesome too",555,1)

		distance = user.calc_distance(444,555)
		expect(distance).to eq(0)
	end
end