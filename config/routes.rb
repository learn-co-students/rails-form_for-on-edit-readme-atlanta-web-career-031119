Rails.application.routes.draw do
  resources :posts, only:[:index, :create, :edit, :new, :show, :update,]
  patch 'posts/:id', to: 'posts#update'

end
