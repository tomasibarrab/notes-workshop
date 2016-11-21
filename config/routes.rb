Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  authenticated :user do
    root 'notes#index', as: 'authenticated_root'
    resources :notes
  end
end
