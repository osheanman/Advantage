Rails.application.routes.draw do
  resources :employees, only: [:index, :show]

  resolve("Employees") { route_for(:employees) }
  
  get 'welcome/index'

  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
