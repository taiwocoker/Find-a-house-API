Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:create, :show]
      resources :houses, only: [:index, :show, :create]
      post 'favourites', to: 'users#new_favourite'
    end
  end
end

