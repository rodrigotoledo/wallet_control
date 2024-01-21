class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum user_type: { responsible: 'responsible', spouse: 'spouse', child: 'child', employee: 'employee', other: 'other' }
  validates :user_type, inclusion: { in: %w(responsible spouse child employee other) }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_type, presence: true
  validates :phone, presence: true
  validates :address, presence: true
end
