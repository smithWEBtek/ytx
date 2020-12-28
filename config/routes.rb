Rails.application.routes.draw do
  resources :videos
  resources :captions
  root 'videos#index'
end
