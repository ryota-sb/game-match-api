Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'login', to: 'secured#login'
      get 'logout', to: 'secured#logout'
      resources :users, only: [:index]
      resources :profiles, only: [:create, :update]
    end
  end
end
