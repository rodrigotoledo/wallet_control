# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }

    user_type { :responsible }

    trait :with_profile do
      after(:create) do |user|
        create(:profile, user: user)
      end
    end

    trait :with_incomplete_profile do
      after(:create) do |user|
        create(:profile, status: nil, user: user)
      end
    end


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
