FactoryBot.define do
  factory :user do
    firstname "MyString"
    after(:build) do |user|
    	[:email, :homework].each do |task|
    		user.task << FactoryBot.build(task, user: user)
    	end
    end
  end

  # factory :user do
  # 	firstname "Doug"
  # end
end
