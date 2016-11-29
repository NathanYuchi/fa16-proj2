Rails.application.routes.draw do
  get 'schedule/view', to: 'schedule#view'

  get 'schedule/index', to: 'schedule#index'

  patch '/add', to: 'schedule#add'
  patch '/delete', to: 'schedule#delete'

  devise_for :users
  root to: 'home#index'
end
