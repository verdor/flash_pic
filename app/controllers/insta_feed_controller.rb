class InstaFeedController < ApplicationController
  def index
    if session[:access_token]
      client = Instagram.client(:access_token => session[:access_token])
      @user = client.user
      @recent_media_items = client.user_recent_media
    else
      alert = "FlashPic, a new app created on the Instagram Platform starts in Sandbox mode. Apps in this mode can use any API endpoint but are restricted to a limited number of users and media for developing and testing your app:<br/><a href='https://www.instagram.com/developer/sandbox/'>Instagram Sandbox Mode</a>"
      @recent_media_items = []
    end
    flash[:alert] = alert || nil
  end
end
