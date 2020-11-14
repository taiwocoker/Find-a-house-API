Rails.application.routes.draw do
      root 'houses#index'
  scope module: 'api', path: '/'  do
    namespace :v1, path: '/'  do
      resources :users, only: [:create]
      resources :houses, only: [:index, :show, :create]
      post 'favourites', to: 'users#new_favourite'
    end
  end
end

