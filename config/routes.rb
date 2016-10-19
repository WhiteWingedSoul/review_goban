Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"

  get "home" => "static_pages#home"

  namespace :admin do
    root "mains#index"
    resources :categories
    resources :main, only: :index
  end
end
