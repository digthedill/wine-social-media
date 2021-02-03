Rails.application.routes.draw do

  devise_for :users
  root to: "main#index"

#   unauthenticated do
#     root :to => 'main#index'
#  end
 
#  authenticated do
#    root :to => 'dashboard#index'
#  end


end
