class Admin::ApplicationController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_admin!
  protect_from_forgery with: :exception
  before_action :auth!

  def auth!
    redirect_to new_admin_session unless current_admin
  end
end
