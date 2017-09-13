Rails.application.routes.draw do
  # get 'pages/home'

  get 'pages/sitemap'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
