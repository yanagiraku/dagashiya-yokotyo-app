FactoryBot.define do
  factory :memory do
    title     {Faker::Lorem.sentence}
    memory    {Faker::Lorem.sentence}

    association :user

  end

end
