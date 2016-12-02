class Admin::ApplicationController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate!

  private
  def authenticate!
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'tikamatu' && pass == 'hirakegoma2015'
    end
  end
end
