Rails.application.routes.draw do
  root "histories#top"
  devise_for :users
  resources :histories do
    collection do
      get "top"
    end
  end

  resources :cars
  resources :users do
    collection do
      get "profile"
    end
  end
end
