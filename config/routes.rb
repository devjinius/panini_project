Rails.application.routes.draw do
  devise_for :users
  get 'mains/index'

  # root
  root "mains#index"
end
