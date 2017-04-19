Rails.application.routes.draw do


  resources :posts
	post 'checkLogin' => 'account#checkLogin'
	get 'result' => 'account#result'
	get 'index' => 'account#index'

	get 'register' => 'account#registerPage'
	post 'register' => 'account#register'
	get 'getData' => 'account#getData'
	post 'postData' => 'account#postData'
	root 'account#index'
end
