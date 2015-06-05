Rails.application.routes.draw do
  # Routes for the Instance resource:
  # CREATE
  get "/instances/new", :controller => "instances", :action => "new"
  post "/create_instance", :controller => "instances", :action => "create"

  # READ
  get "/instances", :controller => "instances", :action => "index"
  get "/instances/:id", :controller => "instances", :action => "show"

  # UPDATE
  get "/instances/:id/edit", :controller => "instances", :action => "edit"
  post "/update_instance/:id", :controller => "instances", :action => "update"

  # DELETE
  get "/delete_instance/:id", :controller => "instances", :action => "destroy"
  #------------------------------

root 'salespeople#index'

  # Routes for the Account resource:
  # CREATE
  get "/accounts/new", :controller => "accounts", :action => "new"
  post "/create_account", :controller => "accounts", :action => "create"

  # READ
  get "/accounts", :controller => "accounts", :action => "index"
  get "/accounts/:id", :controller => "accounts", :action => "show"

  # UPDATE
  get "/accounts/:id/edit", :controller => "accounts", :action => "edit"
  post "/update_account/:id", :controller => "accounts", :action => "update"

  # DELETE
  get "/delete_account/:id", :controller => "accounts", :action => "destroy"
  #------------------------------

  # Routes for the Salesperson resource:
  # CREATE
  get "/salespeople/new", :controller => "salespeople", :action => "new"
  post "/create_salesperson", :controller => "salespeople", :action => "create"

  # READ
  get "/salespeople", :controller => "salespeople", :action => "index"
  get "/salespeople/:id", :controller => "salespeople", :action => "show"

  # UPDATE
  get "/salespeople/:id/edit", :controller => "salespeople", :action => "edit"
  post "/update_salesperson/:id", :controller => "salespeople", :action => "update"

  # DELETE
  get "/delete_salesperson/:id", :controller => "salespeople", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
