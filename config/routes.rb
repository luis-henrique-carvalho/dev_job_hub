Rails.application.routes.draw do
  resources :companies, only: %i[new edit create update]
  resources :positions, only: %i[index new edit show create update]
  resources :applicants, only: %i[index new create]
  devise_for :users
  root 'home#index'
end
