Recoil::Application.routes.draw do

  devise_for :admins

  resources :steps
  resources :illustrations
  resources :advertisements
  resources :admins

  resources :portfolio

  root :to => "home#index"
end
