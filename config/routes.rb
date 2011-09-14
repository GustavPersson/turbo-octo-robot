Kk::Application.routes.draw do
  
  get "kinkynight/show"

  get "kinkynight/edit"

  get "notices/add"

  get "notices/edit"

  get "notices/delete"

  get "users/login"

  get "users/index"

  get "users/edit"

  get "users/add"

  get "uers/upload_image"  

  get "users/view"
  
  get "welcome/index"
  
  match 'users/add' => 'users#add', :as => 'add'
  
  match 'users/upload_image' => 'users#upload_image'
  
  match 'users/authenticate' => 'users#authenticate'
  
  match 'users/logout' => "users#logout"
  
  match 'users/login' => 'users#login', :as => 'login'

  match 'users/:id' => "users#show"
  match 'users/:id/edit' => 'users#edit', :as => 'edit'
  
  match 'notice/add' => 'notices#add', :as => 'add_notice'
  
  match 'notice/:id/delete' => 'notices#delete', :as => 'delete_notice'
  
  match 'pages/quotes' => "quotes#show", :as => 'quote'
  match 'pages/quotes/add' => "quotes#add", :as => 'add_quote'
  
  match 'pages/kinkynight' => "kinkynight#show"
  match 'pages/kinkynight/edit' => "kinkynight#edit", :as => 'edit_kinkynight'
  
  match ':alias' => 'users#show', :as => 'kanin'

  resources :users
  
    
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
  
end
