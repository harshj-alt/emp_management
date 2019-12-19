Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get  'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to:'sessions#destroy'
  get 'signup', to: 'users#new'
  
  resources :employee_tables
  resources :students

  
  get 'employee/list'
  get 'employee/create'
  get 'employee/read'
  get 'employee/update'
  get 'employee/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
