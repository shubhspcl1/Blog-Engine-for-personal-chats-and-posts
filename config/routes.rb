Rails.application.routes.draw do

  devise_scope :user do
    get "/sign_in" => "sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  post 'comments/create', as: "comments"
  devise_for :users

  root to: "posts#index"

  resources :posts do
    member do
      put "like" => "posts#vote"
    end
  end





end
