Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  get '/search', to: 'search_items#index'

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :items, only: [:index, :show, :destroy, :create]
    end

  end
end
