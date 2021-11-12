Rails.application.routes.draw do
  root to: 'lists#index'
resources :lists, except: [:edit, :update] do
resources :bookmarks, only: [ :new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end
