FactoryGirl.define do
	#This has to be :user, because this is how FactoryGirl knows that this is the USER MODEL
	factory :user do #This :user will automatically use the User model. So FG converts the symbol into the user class.
		sequence(:name)  { |n| "Person #{n}" }   #and then we give the attributes which are simply methods here in Domain Specific Language
		sequence(:email) { |n| "person_#{n}@example.com" }
		password "access"
		password_confirmation "access"
	end

  factory :admin do
      admin true
    end
end
