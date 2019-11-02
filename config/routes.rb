Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :visits, only: :show
      resources :urls, except: :update

      get 'visits/:token', to: 'visits#show', as: :token
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
