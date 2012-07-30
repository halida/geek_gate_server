# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    title "MyString"
    description "MyText"
    type ""
    options "MyText"
    answer "MyString"
    author_id 1
  end
end
