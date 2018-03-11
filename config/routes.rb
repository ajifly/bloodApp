Rails.application.routes.draw do
  root 'start_pages#home'
  get 'start_pages/home'
  get '/signup', to: 'users#new'
end
