Rails.application.routes.draw do
  get 'companies/new'
  get 'companies/edit'
  devise_for :users
  root'home#index'

end
