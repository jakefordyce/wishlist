Rails.application.routes.draw do
  resources :collaborations
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get 'users/:id', to: 'users/registrations#show', as: 'profile'
  end
  resources :comments
  resources :items
  resources :lists

  get 'static_pages/home'
  root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
