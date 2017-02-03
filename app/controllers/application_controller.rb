class ApplicationController < ActionController::Base
  around_action :handle_instagram_exceptions
  protect_from_forgery with: :exception
  before_action :check_session

  private

  # https://github.com/facebookarchive/instagram-ruby-gem/blob/master/lib/faraday/raise_http_exception.rb
  def handle_instagram_exceptions
    begin
      yield
    rescue Instagram::BadRequest => exception
      redirect_to root_url, flash: { error: exception.message }
    end
  end

  def check_session
    @session = session[:access_token].present?
    @token = session[:access_token]
  end

end
