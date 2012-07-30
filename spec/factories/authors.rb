# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    name "MyString"
    geek_id 1
    avatar "MyString"
    description "MyText"
  end
end
