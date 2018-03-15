Rails.application.routes.draw do
  root 'start_pages#home'
  get 'new_inputblood', to: 'inputbloods#newpage'
  resources :inputbloods
end
