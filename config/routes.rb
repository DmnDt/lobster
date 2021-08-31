Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :investments, only: [:index] do
    member do
      put "mark_as_ter"
      put "validate"
    end
  end
  resources :investees, only: [:create, :new]
  resources :investors, only: [:create, :new]
  resources :projects, only: [:index, :show] do
    resources :investments, only: [:create]
    member do
      get "data_room"
      get "test"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
