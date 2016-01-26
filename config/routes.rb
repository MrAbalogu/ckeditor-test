Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  get '/admin' => "posts#admin"
  root 'posts#index'
end
