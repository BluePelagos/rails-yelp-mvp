# Rails.application.routes.draw do
#   get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_review'
#   post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'create_review'
#   get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
#   post 'restaurants', to: 'restaurants#create', as: 'create_restaurant'
#   get 'restaurants', to: 'restaurants#index', as: 'restaurants'
#   get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
