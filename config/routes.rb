Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root to: 'visitors#home', as: :authenticated_root
  end
  unauthenticated do
    root to: 'visitors#index'
  end

end
