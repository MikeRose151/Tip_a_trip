Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Original
  # resources :users do
  #   resources :itineraries, only: [:index] do
  #     resources :activities, only: [:index]
  #   end
  # end

  resources :users do
    # /users/:id/itineraries -> itineraries belonging to that user (which should include ones they stole)
    resources :itineraries, only: [:index] do
    end
  end

  resources :itineraries, only: [:index, :show, :new, :create, :edit, :update] do
    resources :activities, only: [:index] do
      resources :favourites, only: [:create]
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
