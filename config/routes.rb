Rails.application.routes.draw do



  resources :fa_questions
  resources :contacts #, only: [ :new, :create ]
  resources :careers #, only: [ :new, :create ]
  
  # get 'contacts/new'

  # get 'contacts/create'

  # get 'pages/home'

  get 'pages/sitemap'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
