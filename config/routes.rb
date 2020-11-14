Rails.application.routes.draw do
  root to: "api/v1/welcome#index"
  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:create, :show]
      resources :houses, only: [:index, :show]
      post 'favourites', to: 'users#new_favourite'
    end
  end
end

