Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'creates', to: 'actions#index'
  post 'creates', to: 'actions#create'
end
