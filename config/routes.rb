Rails.application.routes.draw do
  resources :books
	#get "new", to: "articles#new" 

	resources :articles do 
		resources :comments
		get 'preview', on: :member
		get 'search', on: :collection
	end
	root "articles#index"

	#get "/articles", to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
