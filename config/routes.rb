Rails.application.routes.draw do
  get 'schedule/view', to: 'schedule#view'

  get 'schedule/index', to: 'schedule#index'

  get 'courses/view'

  devise_for :users
  root to: 'home#index'
end
