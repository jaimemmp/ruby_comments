require_relative "../lib/Movies"
require_relative "../lib/Users"
require_relative "../lib/Comments"

describe "related comments sistem" do
	it "post a comment" do
		comments = Comments.new(1,"awesome",1,1)
		expect(comments.count_comments(1)).to eq(1)
	end
end