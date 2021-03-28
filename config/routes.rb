Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles
  resource :terms, only: [:show]
  resource :about, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
