Rails.application.routes.draw do
  get 'countries/index'
  namespace :api do
    namespace :v1 do
      namespace :country do
        resources :codes, only: :show
        resources :capitals, only: :index
        resources :trips, only: :create
      end
    end
  end
end
