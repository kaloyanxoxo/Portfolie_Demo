Rails.application.routes.draw do
  devise_for :users
	resources :contacts, only: [:new, :create]
	resources :projects
	resources :posts
  	get 'welcome/index' 
  	root 'welcome#index'

  	get '*path' => redirect('/')
end
