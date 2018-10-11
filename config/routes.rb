Rails.application.routes.draw do
  
  root 'pages#homepage'
  get 'about', to: 'pages#about'
  
  resources :articles
  
end