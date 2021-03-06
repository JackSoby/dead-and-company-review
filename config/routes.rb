Rails.application.routes.draw do
   devise_for :users
  root 'static_pages#index'
  namespace :api do
      namespace :v1 do
        resources :setlists, only: [:index]
        resources :tours, only: [:index]
        resources :shows
      end
    end
    get '*path', to: 'static_pages#index'
end
