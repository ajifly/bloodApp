Rails.application.routes.draw do
  root 'start_pages#home'
  resources :inputbloods
end
