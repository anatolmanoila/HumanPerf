FactoryGirl.define do
	#This has to be :user, because this is how FactoryGirl knows that this is the user model
	factory :user do #This :user will automatically use the User model. So FG converts the symbol into the user class.
		name     "Anatol Manoila"   #and then we give the attributes which are simply methods here in Domain Specific Language
		email    "anatol.manoila@gmail.com"
		password "please"
		password_confirmation "please"
	end
end