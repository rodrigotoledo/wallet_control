class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile, dependent: :destroy
  enum user_type: { responsible: 'responsible', spouse: 'spouse', child: 'child', employee: 'employee', other: 'other' }
  after_initialize :set_default_user_type

  validates :user_type, inclusion: { in: %w(responsible spouse child employee other) }
  validates :user_type, presence: true

  private

  def set_default_user_type
    self.user_type ||= 'responsible'
  end
end
