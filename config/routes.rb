Rails.application.routes.draw do
  resources :collab_requests
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'users/:id', to: 'users/registrations#show', as: 'profile'
  end
  resources :comments, except: [:index, :show]
  resources :items, except: [:index]
  resources :lists, except: [:index]
  resources :collaborations

  get 'static_pages/home'
  get :search, controller: :static_pages
  root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
