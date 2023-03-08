Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home"

  resources :users do
    resources :itineraries, only: [:index] do
      resources :activities, only: [:index] 
    end

  end

  resources :itineraries, only: [:index, :show, :new, :create, :edit, :update]

 

  # Defines the root path route ("/")
  # root "articles#index"
end
