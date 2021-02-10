Rails.application.routes.draw do

  resources :posts
  devise_for :users
  root to: "main#index"

  get 'users/:id' => 'users#show'
  #   unauthenticated do
  #     root :to => 'main#index'
  #  end
 
#  authenticated do
#    root :to => 'dashboard#index'
#  end


end
