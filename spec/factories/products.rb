FactoryGirl.define do
  factory :product do
    sequence(:name)   { |n| "Ruby book #{n}" }
    sequence(:sku)    { |n| "ruby-book-#{n}" }
    price             10

    association :brand , factory: :brand
  end
end
