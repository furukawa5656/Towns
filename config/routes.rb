Rails.application.routes.draw do



  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users

  root to: "home#top"
  get 'home/about', to:"home#about"

  resources :users, only:[:show, :edit, :update] do
  	get "users/close_view", to: "users#close_view"
  	patch "users/close", to: "users#close"
  end

  resources :lines, only:[:index]
  resources :stations, only:[:index, :show] do
  	resources :comments, only: [:new, :create, :destroy]
  end

  resources :categories, only: [:create, :edit, :update]

end
