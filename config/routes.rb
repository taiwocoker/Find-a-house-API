Rails.application.routes.draw do
  root to: 'api/v1/users#index'
  scope module: 'api' do
    namespace :v1 do
      resources :users, only: %i[create show]
      resources :houses, only: %i[index show create]
      post 'favourites', to: 'users#new_favourite'
    end
  end
end
