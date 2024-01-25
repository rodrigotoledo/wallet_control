class ProfilesController < ApplicationController
  layout 'protected'
  include Wicked::Wizard

  before_action :set_user_profile, :set_progress

  steps :more_info

  def update
    @profile.status = step.to_s
    @profile.status = 'active' if step == steps.last
    current_step_index = steps.index(step)
    next_step = steps[current_step_index + 1]
    @profile.next_step = next_step.present? ? next_step.to_s : steps.first.to_s
    if @profile.update(profile_params)
      flash[:notice] = I18n.t('operations.notice')
    else
      flash[:alert] = I18n.t('operations.alert')
    end
    render_wizard @profile
  end

  private

  def set_progress
    if steps.any? && steps.index(step).present?
      @progress = ((steps.index(step) + 1).to_f / steps.count.to_f) * 100
    else
      # :nocov:
      @progress = 0
      # :nocov:
    end
  end

  def set_user_profile
    @user = current_user
    @profile = @user.profile || @user.build_profile
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address, :phone)
  rescue
    {}
  end
end
