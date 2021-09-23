Rails.application.routes.draw do
  get 'countries/index'
  namespace :api do
    namespace :v1 do
      namespace :country do
        resources :codes, only: :show
        resources :capitals
      end
    end
  end
end
