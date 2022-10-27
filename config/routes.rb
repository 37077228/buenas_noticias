Rails.application.routes.draw do
  get "pages/index" 
  root "pages#index"

  get "pages/form"
  post "pages/", to: "pages#create"
end
