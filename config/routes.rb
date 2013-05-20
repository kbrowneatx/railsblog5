Railsblog5::Application.routes.draw do
  resources :users do
    resources :comments, :only => [:index]
  end
  resources :posts do
	resources :comments, :only => [:index, :new, :create]
  end
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'posts#index'

  # See how all your routes lay out with "rake routes"

end
