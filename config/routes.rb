Roadtripescape::Application.routes.draw do

  devise_for :users
  resources :users, :trips, :locations, :landmarks

root :to => "home#index"
get 'page/edit'
end