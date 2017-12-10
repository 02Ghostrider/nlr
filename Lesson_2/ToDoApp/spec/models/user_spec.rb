require 'rails_helper'

RSpec.describe User, type: :model do
	it "has a valid name" do
		expect(FactoryBot.build(:user)).to be_valid
	end

  it "has a unique name" do
  	expect(FactoryBot.build(:user)).to be_unique
  end

  it "has many tasks" do
  	expect(FactoryBot.build(:user).tasks.length).to be 2
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

