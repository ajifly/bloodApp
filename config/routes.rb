Rails.application.routes.draw do
  root 'start_pages#home'
  get '/input', to: 'inputbloods#new'
  resources :inputbloods
end
