Recoil::Application.routes.draw do

  devise_for :admins, :controllers => {:sessions => "sessions"}

  resources :steps
  resources :illustrations
  resources :advertisements
  resources :admins

  resources :portfolio

  root :to => "home#index"
end
