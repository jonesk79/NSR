Rails.application.routes.draw do
  root to: 'superheros#index'

  resources :superheros
  resources :cities
end
