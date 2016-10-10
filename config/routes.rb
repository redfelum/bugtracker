Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  match '/log/:token' => 'log#index', :via => :get
  match '/log/' => 'log#create', :via => :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
