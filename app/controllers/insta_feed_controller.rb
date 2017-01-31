class InstaFeedController < ApplicationController
  def index
    if session[:access_token]
      client = Instagram.client(:access_token => session[:access_token])
      @user = client.user
      @recent_media_items = client.user_recent_media
    end
    @token = session[:access_token]
  end
end
