Roadtripescape::Application.routes.draw do
  
  devise_for :models

root :to => "trips#index"

end
