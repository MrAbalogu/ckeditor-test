Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
end
