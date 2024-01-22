class RegistrationsController < Devise::RegistrationsController
  layout 'application'
  def create

    build_resource(sign_up_params)

    super do |resource|
      if resource.errors.empty?
        resource.save!
        redirect_to root_path
        return
      else
        render 'welcome/index'
        return
      end
    end
  end

  protected

  def after_inactive_sign_up_path_for(resource)
    welcome_index_path
  end
end
