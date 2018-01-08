Rails.application.routes.draw do
	resources :contacts, only: [:new, :create]
	resources :projects
	resources :posts
  	get 'welcome/index' 
  	root 'welcome#index'
end
