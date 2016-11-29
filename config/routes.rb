Rails.application.routes.draw do
  get 'schedule/view'

  get 'schedule/index', to: 'schedule#index'

  patch '/add', to: 'schedule#add'

  devise_for :users
  root to: 'home#index'
end
