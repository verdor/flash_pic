require "instagram"

CALLBACK_URL = "http://localhost:3000/insta_oauth/callback"

Instagram.configure do |config|
  #config.client_id = "YOUR_CLIENT_ID"
  #config.client_secret = "YOUR_CLIENT_SECRET"
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end
