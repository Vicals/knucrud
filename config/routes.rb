Rails.application.routes.draw do
  devise_for :users
  root 'one#index'

  #one controller
  get 'one/index'

  get 'one/create'
  post 'one/create'
  
  get 'one/new'
  
  get 'one/show'
  get 'one/show/:id' => "one#show"
  
  get 'one/destroy'
  get 'one/destroy/:id' => "one#destroy"
  
  get 'one/update'
  post 'one/update/:id' => "one#update"
  get 'one/edit'
  get 'one/edit/:id' => "one#edit"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
