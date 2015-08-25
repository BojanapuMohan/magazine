Srsfda::Application.routes.draw do
  

  resources :reply_comments

  resources :comments

  resources :articles do
    get 'preview', on: :collection
    get 'all', on: :collection
    get 'my', on: :collection
  end

   


  get "optional/index"
  get "users/profile"
  get "users/index"
  get "users/show"
   get "users/settings"
   get 'comments/new'
  
  #devise_for :users
  devise_for :users, controllers: { registration: 'registrations' }
 
   root 'welcome#index'
   get 'welcome/dashboard'
   get 'welcome/index'
  
   resources :articles do
    resources :comments, :only => [:create]
  end
  resources :comments do
    get '/comments/new/(:parent_id)', to: 'comments#new', as: :new_comment
    #resources :reply_comments, :only => [:create]
  end

end
