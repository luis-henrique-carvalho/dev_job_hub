Rails.application.routes.draw do
  get 'applicants/index'
  get 'applicants/new'
  get 'positions/index'
  get 'positions/new'
  get 'positions/edit'
  get 'positions/show'
  get 'companies/new'
  get 'companies/edit'
  devise_for :users
  root'home#index'

end
