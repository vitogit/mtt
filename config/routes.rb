Mtt::Application.routes.draw do
  root :to => "home#index"
  #resources :users, :only => [:index, :show, :edit, :update,:delete ]
  resources :users
  post '/auth/:provider/callback' => 'sessions#create'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin_openid' => 'sessions#new_openid', :as => :signin_openid

  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
