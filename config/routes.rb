Rails.application.routes.draw do
  get 'callbacks/github'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'site/index'
  root 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
