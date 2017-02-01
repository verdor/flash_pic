class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_session

  private
  def check_session
    @session = session[:access_token].present?
    @token = session[:access_token]
  end

end
