Rails.application.routes.draw do
  resources :publications, except: [:index] do
    resources :comments, only: [:create]
  end
  get '/publications', to: 'publications#index', as: 'user_root'
  devise_for :users , controllers: {
    registrations: 'users/registrations'
  }

  get 'home', to:'home#index'
  root "publications#index"
end
