class Profile < ApplicationRecord
  belongs_to :user

  with_options if: :active_to_more_info? do |profile|
    profile.validates :first_name, :last_name, :phone, :address, presence: true
  end

  def active?
    status == 'active'
  end

  def active_to_more_info?
    status&.include?('more_info') || active?
  end
end
