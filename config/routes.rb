Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get '/admin' => "posts#admin"
  get '/about' => "posts#about"
  root 'posts#index'
  resources :subscribers
  resources :posts

  resources :posts do 
    resources :subscribers
  end 
  
end
