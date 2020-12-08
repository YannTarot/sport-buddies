Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :profile, only: [:show, :update]

  resources :events, only: [:index, :show, :new, :create, :edit, :update] do
    resources :participations, only: [:create, :confirm]
    resources :invitations, only: [:new, :create]
    resources :messages, only: :create
  end

  resources :participations, only: [] do
    member do
      patch :confirm
      patch :deny
    end
  end

  resources :friendships, only: [] do
    member do
      patch :accept
      patch :deny
    end
  end

  resources :users, only: [:show] do
    resources :friendships, only: [:create]
  end
end
