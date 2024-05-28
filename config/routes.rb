Rails.application.routes.draw do
  get 'positions/index'
  get 'positions/new'
  get 'positions/edit'
  get 'positions/show'
  get 'companies/new'
  get 'companies/edit'
  devise_for :users
  root'home#index'

end
