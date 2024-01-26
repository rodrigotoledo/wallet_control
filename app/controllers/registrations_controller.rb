class RegistrationsController < Devise::RegistrationsController
  layout 'application'
  layout 'protected', only: [:edit]
end
