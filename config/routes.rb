Rails.application.routes.draw do

  resources :assignments
  get 'dashboard/home'
  post 'dashboard/sign_in_user2'
  get 'dashboard/sign_out_user2'

  resources :kids do
    resources :assignments, only: [:index, :new]
    resources :kachings, only: [:index]
  end
  resources :kachings

  devise_for :users

  authenticated :user do
    root to: 'dashboard#home', as: :authenticated_root
  end

  unauthenticated do
    root to: 'visitors#index'
  end

end
