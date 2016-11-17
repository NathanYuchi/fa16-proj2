Rails.application.routes.draw do
  get 'schedule/view'

  get 'schedule/add'

  get 'courses/view'

  devise_for :users
  root to: 'home#index'
end
