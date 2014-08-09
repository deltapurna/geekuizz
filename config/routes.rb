Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'
  post 'solution', to: 'homepage#solution'
end
