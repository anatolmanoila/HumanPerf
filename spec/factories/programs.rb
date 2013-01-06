# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    user_progress 1
    user_status "MyString"
    user_rating "MyString"
    task_title "MyString"
    type ""
  end
end
