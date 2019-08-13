Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :orders, only: [:show, :index]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :items, only: [:show, :index, :create, :update, :destroy]
    end
  end
end
