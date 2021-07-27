Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

get '/404', to: 'errors#not_found'
get '/500', to: 'errors#internal_server'
get '/422', to: 'errors#unprocessable'

  # catalogue
  resources :plants, only: [:index, :show]
  
  resources :balconies, only: [:new, :create, :show] do
    resources :balcony_plants, only: [:create] do
      collection do
        post :batch_create # cf tuto batch delete stimulus
      end
    end
  end

  resources :balcony_plants, only: [:show] do
    resources :tasks, only: [:new, :create]
  end

  resources :tasks, only: [:index] do
    member do
      patch :complete
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
