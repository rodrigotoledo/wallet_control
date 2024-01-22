# db/seeds.rb

user = User.create!(
  email: 'faker@test.com',
  password: 'password',
  password_confirmation: 'password',
  user_type: 'responsible'
)

user.build_profile(
  first_name: 'Faker',
  last_name: 'Responsible',
  phone: '123456789',
  address: '123 Main St'
)

user.save!

user = User.create!(
  email: 'responsible@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  user_type: 'responsible'
)

user.build_profile(
  first_name: 'Rodrigo',
  last_name: 'Toledo',
  phone: '123456789',
  address: '123 Main St'
)

user.save!

user = User.create!(
  email: 'spouse@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  user_type: 'spouse'
)

user.build_profile(
  first_name: 'Gislene',
  last_name: 'Dornelas',
  phone: '987654321',
  address: '456 Second St'
)

user.save!

user = User.create!(
  email: 'child@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  user_type: 'child'
)

user.build_profile(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  phone: '987654321',
  address: '456 Second St'
)

user.save!

user = User.create!(
  email: 'employee@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  user_type: 'employee'
)

user.build_profile(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  phone: '987654321',
  address: '456 Second St'
)

user.save!

user = User.create!(
  email: 'other@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  user_type: 'other'
)

user.build_profile(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  phone: '987654321',
  address: '456 Second St'
)

user.save!
