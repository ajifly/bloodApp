Rails.application.routes.draw do
  get 'start_pages/home'

  root 'application#hello'
end
