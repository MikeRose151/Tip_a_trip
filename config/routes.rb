Rails.application.routes.draw do
  get 'itinerary/show'
  get 'itinerary/index'
  get 'itinerary/create'
  get 'itinerary/new'
  get 'itinerary/edit'
  get 'itinerary/update'
  get 'activities/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
