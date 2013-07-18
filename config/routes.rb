Roadtripescape::Application.routes.draw do

  devise_for :users
  resources :users, :trips, :locations, :landmarks

root :to => "trips#index"
get 'page/edit'
get "/parks" => "landmarks#index"
get "/contact" => "trips#contact"
get "/map" => "trips#map"

end