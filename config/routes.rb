Rails.application.routes.draw do
  get 'countries/index'
  namespace :api do
    namespace :v1 do
      namespace :country do
        resources :codes, controller: "codes"
      end
    end
  end

  #jsonapi_resources :countries
end
