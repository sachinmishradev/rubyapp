Rails.application.routes.draw do
  resources :autos
  resources :students
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#home"
  get "welcome/login" , to: "welcome#login"
  get "welcome/about" ,  to: "welcome#about"
  
end
