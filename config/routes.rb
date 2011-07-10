Shouter::Application.routes.draw do
  resources :shouts, :only => [:new, :create, :index]
end
