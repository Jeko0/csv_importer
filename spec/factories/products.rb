FactoryBot.define do
  factory :product do
    sequence(:id) { |n| "#{n}" }
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    quantity { Faker::Number.between(from: 1, to: 10) }
    price { Faker::Commerce.price(range: 0..100.0) }
  end
end
