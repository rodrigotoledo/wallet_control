class ProfilesController < ApplicationController
  layout 'protected'
  include Wicked::Wizard

  before_action :set_progress

  steps :more_info

  def update
    @user = current_user
    @profile = @user.profile || @user.build_profile
    @profile.status = step.to_s
    @profile.status = 'active' if step == steps.last
    current_step_index = steps.index(step)
    next_step = steps[current_step_index + 1]
    @profile.next_step = next_step.present? ? next_step.to_s : steps.first.to_s
    @profile.update(profile_params)
    render_wizard @profile
  end

  private

  def set_progress
    if steps.any? && steps.index(step).present?
      @progress = ((steps.index(step) + 1).to_f / steps.count.to_f) * 100
    else
      @progress = 0
    end
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address, :phone)
  end
end
