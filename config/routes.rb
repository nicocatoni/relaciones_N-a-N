Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  patch 'album/:id/update', to: 'album#update', as: 'task_update'
  get 'album/index'
  get 'tasks/:id/show', to: 'tasks#show', as:'task_show'

  resources :tasks, only: [:index, :show] do
  resources :album, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  
end
