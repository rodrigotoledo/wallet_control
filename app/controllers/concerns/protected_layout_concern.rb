# app/controllers/concerns/protected_layout_concern.rb
module ProtectedLayoutConcern
  extend ActiveSupport::Concern

  included do
    layout 'protected'
  end

  def require_complete_profile
    unless current_user&.profile&.active?
      @current_step = @profile&.next_step || :more_info
      flash[:alert] = 'Complete your profile before proceeding.'
      redirect_to profile_path(@current_step)
    end
  end
end
