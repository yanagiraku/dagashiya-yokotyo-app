FactoryBot.define do
  factory :product do
    product_name       {Faker::Name.initials}
    description        {Faker::Lorem.sentence}
    company_id         {Faker::Number.between(from: 2, to: 21)}
    category_id        {Faker::Number.between(from: 2, to: 7)}
    flavour_id         {Faker::Number.between(from: 2, to: 7)}
    package_type_id    {Faker::Number.between(from: 2, to: 8)}
    unicent_price_id   {Faker::Number.between(from: 2, to: 11)}

    after(:build) do |product|
      product.image.attach(io: File.open('public/キャベツ太郎.jpeg'), filename: 'キャベツ太郎.jpeg')
    end
  end
end
