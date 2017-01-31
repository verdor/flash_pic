Rails.application.routes.draw do
  get 'insta_feed/index'

  get 'insta_oauth/connect'
  get 'insta_oauth/callback'
  get 'insta_oauth/disconnect'

  root 'insta_feed#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
