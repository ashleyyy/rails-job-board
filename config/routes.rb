Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'users/new'

  get 'users/create'

  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :users, only: [:new, :create] do
     resources :jobs
  end

  resources :jobs

  resources :sessions, only: [:new, :create, :destroy]


end
