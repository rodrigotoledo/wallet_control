class ProfilesController < ApplicationController
  include Wicked::Wizard
  steps :more_info

  def show
    @user = current_user
    @profile = @user.profile || @user.build_profile
    render_wizard
  end

  def create
    @user = current_user
    @profile = @user.profile || @user.build_profile
    redirect_to wizard_path(steps.first, profile_id: @profile.id)
  end

  def update
    puts params.inspect
    @user = current_user
    @profile = @user.profile || @user.build_profile
    @profile.status = step.to_s
    @profile.status = 'active' if step == steps.last
    @profile.update(profile_params)
    render_wizard @profile
  end

  private

  def profile_params
    
    params.require(:profile).permit(:first_name, :last_name, :address, :phone)
  end
end
