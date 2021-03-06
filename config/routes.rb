Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  get "investee_finish", to: "pages#investee_finish"
  get "investor_finish", to: "pages#investor_finish"
  get "dashboard", to: "pages#dashboard"
  get "docusign", to: "pages#docusign"
  resources :investments, only: [:index] do
    member do
      put "mark_as_ter"
      put "validate"
    end
  end
  resources :investees, only: [:create, :new]
  resources :investors, only: [:create, :new]
  resources :projects, only: [:index, :show, :create, :new, :update] do
    resources :investments, only: [:create]
    member do
      get "data_room"
    end
  end
end
