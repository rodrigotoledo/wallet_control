class CustomRegistrationsController < ApplicationController
  include ProtectedLayoutConcern

  def cancel_registration
    current_user.destroy
    sign_out_and_redirect(current_user)
  end
end
