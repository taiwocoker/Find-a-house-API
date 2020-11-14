Rails.application.routes.draw do
  scope module: 'api', path: '/'  do
    namespace :v1, path: '/'  do
      root 'houses#index'
      resources :users, only: [:create]
      resources :houses, only: [:index, :show, :create]
      post 'favourites', to: 'users#new_favourite'
    end
  end
end

