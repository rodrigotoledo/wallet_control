class HomeController < ApplicationController
  include ProtectedLayoutConcern

  before_action :require_complete_profile, only: :index
  def index

  end
end
