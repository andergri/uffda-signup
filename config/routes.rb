UffdaSignup::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :shareplatform, only: [:show]
  root to: 'visitors#new'
  match '/u/:id' => 'shareplatform#show', :as => "show_shareplatform", :via => :get, :constraints => { :id => /[a-z0-9]{10}/ }
end
