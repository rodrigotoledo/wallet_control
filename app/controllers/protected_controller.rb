# :nocov:
class ProtectedController < ApplicationController
  before_action :authenticate_user!
  layout 'protected'
end
# :nocov:
