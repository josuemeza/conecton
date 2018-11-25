Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # API routes
  defaults format: :json do
    mount_devise_token_auth_for 'User', at: 'login'
    resources :notifications, only: [:index, :show]
    resources :emergencies
    resources :posts
    resources :comments
    resources :exercises, only: [:index, :show]
    resources :conditions, only: [:index, :show]
    resources :post_tags, only: [:index, :show]
    resources :post_types, only: [:index, :show]
    resources :product_requests
    resources :products do
      resources :product_requests, path: "request"
    end
    resources :posts, only: [] do
      resources :comments
    end
    resources :profiles do
      post "/position", to: "profiles#position"
      resources :posts
      resources :conditions
      resources :exercises
    end
  end

    # Root web route
    root to: "admin/dashboard#index"

end
