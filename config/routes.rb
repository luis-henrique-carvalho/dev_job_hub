Rails.application.routes.draw do
  get 'pages/home'
  get 'dashboard/index'
  devise_for :users
end
