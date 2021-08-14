Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :secured, only: [:index]
      resources :test, only: [:index]
      resources :profiles, only: [:create, :update]
    end
  end
end
