Rails.application.routes.draw do
  resources :publications, except: [:index] do
    resources :comments, only: [:create]
  end
  get '/publications', to: 'publications#index', as: 'user_root'
  devise_for :users , controllers: {
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   get 'home/index'
  root "publications#index"
end
