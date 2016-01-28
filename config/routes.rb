Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get '/admin' => "posts#admin"
  root 'posts#index'
  resources :subscribers
  resources :youtubes
  resources :posts

  resources :posts do 
    resources :subscribers
  end 
  
  resources :posts do 
    resources :youtubes
  end 
end
