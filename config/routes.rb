Rails.application.routes.draw do


  devise_for :users

  root to: "home#top"
  get 'home/about', to:"home#about"

  resources :users, only:[:show, :edit, :update] do
  	get "users/close_view", to: "users#close_view"
  	patch "users/close", to: "users#close"
  end


end
