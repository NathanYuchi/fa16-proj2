Rails.application.routes.draw do
  get 'schedule/view', to: 'schedule#view'
  post 'schedule/view', to: 'schedule#view'

  get 'schedule/index', to: 'schedule#index'

  get '/schedule/new', to: 'schedule#new'
  get '/schedule/viewall', to: 'schedule#viewAll'

  patch '/schedule/create', to: 'schedule#create'
  post '/schedule/create', to: 'schedule#create'

  get '/schedule/add', to: 'schedule#add'
  patch '/schedule/add', to: 'schedule#add'

  post '/schedule/addCourse', to: 'schedule#addCourse'
  patch '/schedule/addCourse', to: 'schedule#addCourse'
  get '/schedule/addCourse', to: 'schedule#addCourse'

  post '/schedule/deleteCourse', to: 'schedule#deleteCourse'
  patch '/schedule/deleteCourse', to: 'schedule#deleteCourse'
  get '/schedule/deleteCourse', to: 'schedule#deleteCourse'

  patch '/delete', to: 'schedule#delete'


  devise_for :users
  root to: 'home#index'
end
