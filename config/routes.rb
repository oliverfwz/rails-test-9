Rails.application.routes.draw do
  root 'home#index'
  resources :products, only: [:index] do
    collection do
      get :filter
    end
  end
end
