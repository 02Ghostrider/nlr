require 'rails_helper'

# RSpec.describe Task, type: :model do
#   # pending "add some examples to (or delete) #{__FILE__}"
#   it "is a valid entry" do
# 		task = Task.new(name: "Learn to program Rails", priority: 1)
# 		expect(task).to be_valid
#   end

#   it "is an invalid entry without name"do
#   	task = Task.new(name: nil, priority: 1)
#   	expect(task).to_not be_valid
# 	end

# 	it "is an invalid entry without priority" do
# 		task = Task.new(name: "Learn to program Rails", priority: nil)
# 		expect(task).to_not be_valid
# 	end
# end

RSpec.describe Task, type: :model do
	it "is a valid entry" do
		expect(FactoryBot.build(:tasks)).to be_valid
	end
end

# RSpec.describe Task, type: :model do
#   it "has a valid factory" do
#     expect(build(:task)).to be_valid
#   end

#   it 'is valid with valid attributes' do
#     task = create(:vote)
#     expect(task).to be_valid
#   end

#   it 'is invalid without name' do
#     task = build(:task, name: nil)
#     expect(task).not_to be_valid
#   end

#   it 'is invalid without priority' do
#     task = build(:task, priority: nil)
#     expect(task).not_to be_valid
#   end
# end
