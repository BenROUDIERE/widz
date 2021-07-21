Rails.application.routes.draw do
  get 'balcony_plants/show'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/index'
  get 'plants/index'
  get 'plants/show'
  get 'balconies/new'
  get 'balconies/create'
  get 'balconies/show'
  root to: 'pages#home'

  devise_for :users

  # catalogue
  resources :plants, only: [:index, :show]
  
  resources :balconies, only: [:new, :create, :show] do
    resources :balcony_plants, only: [] do
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
