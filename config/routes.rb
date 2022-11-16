Rails.application.routes.draw do
  resources :categories, except: :show
  resources :news
  root 'news#index'
end
