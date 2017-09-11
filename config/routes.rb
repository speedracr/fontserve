Rails.application.routes.draw do
  get 'pages/home'

  root 'fonts#index'
end
