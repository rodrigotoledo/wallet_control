# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    user_type { :responsible }
    phone { Faker::PhoneNumber.phone_number }
    address { Faker::Address.full_address }

    trait :spouse do
      user_type { :spouse }
    end

    trait :child do
      user_type { :child }
    end

    trait :employee do
      user_type { :employee }
    end

    trait :other do
      user_type { :other }
    end
  end
end
