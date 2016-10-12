Rails.application.routes.draw do

  resources :tests
  get 'welcome/index'
  root 'welcome#index'

  match '/log/:token' => 'log#index', :via => :get
  match '/log/' => 'log#create', :via => :post

  match '/errors/:token' => 'errors#index', :via => :get
  match '/errors/' => 'errors#create', :via => :post
end
