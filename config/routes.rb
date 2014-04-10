UffdaSignup::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
  match '/u/:id' => 'shareplatfrom#show', :as => "show_shareplatfrom", :via => :get
end
