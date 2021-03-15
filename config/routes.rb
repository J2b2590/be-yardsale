Rails.application.routes.draw do
  resources :yardsales
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  resources :users
  # get "/users", to: "users#create"
end
