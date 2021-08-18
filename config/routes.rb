Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :test, only: [:index]
      resources :secured, only: [:index]
      resources :users, only: [:index]
      resources :profiles, only: [:create, :update]
    end
  end
end
