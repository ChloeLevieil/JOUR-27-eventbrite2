Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'

  root 'events#index'
  #changer "event" selon le nom de la page d'accueil
  #root to: redirect('static_pages#index')
  
  resources :events
  resources :attendances

  devise_for :users



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
