FactoryGirl.define do
  factory :brand do
    sequence(:name)  { |n| "Nike #{n}" }
  end
end
