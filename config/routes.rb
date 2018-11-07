Rails.application.routes.draw do
  root "main#index"
  get "/cities", to: "cities#view"
  get "/cities/view", to: "cities#view"
  get "/cities/new", to: "cities#new"
  post "/cities/create", to: "cities#create"
  get "/cities/old", to: "cities#old"
  patch "cities/update", to: "cities#update"
end
