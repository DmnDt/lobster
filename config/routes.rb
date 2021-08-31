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
  resources :projects, only: [:index, :show, :create, :new] do
    resources :investments, only: [:create]
    member do
      get "data_room"
    end
  end
end
