# db/seeds.rb

User.create!(
  email: 'faker@test.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Faker',
  last_name: 'Responsible',
  user_type: 'responsible',
  phone: '123456789',
  address: '123 Main St'
)

User.create!(
  email: 'responsible@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Rodrigo',
  last_name: 'Toledo',
  user_type: 'responsible',
  phone: '123456789',
  address: '123 Main St'
)

User.create!(
  email: 'spouse@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Gislene',
  last_name: 'Dornelas',
  user_type: 'spouse',
  phone: '987654321',
  address: '456 Second St'
)

User.create!(
  email: 'child@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  user_type: 'child',
  phone: '987654321',
  address: '456 Second St'
)

User.create!(
  email: 'employee@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  user_type: 'employee',
  phone: '987654321',
  address: '456 Second St'
)

User.create!(
  email: 'other@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  user_type: 'other',
  phone: '987654321',
  address: '456 Second St'
)
