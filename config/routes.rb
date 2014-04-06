ProductivityStyled::Application.routes.draw do
  resources :douchebags

  resources :hours

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end