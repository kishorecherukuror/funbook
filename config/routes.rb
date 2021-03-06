Rails.application.routes.draw do
  get 'products/new'

  get 'products/create'
  post 'products/create'
  get 'products/index'

  get 'products/:id' , to: "products#new_product_category", as: "new_product"
  post 'products/create_product_category'

  get 'categories/new'

  get 'categories/create'
  post 'categories/create'
  get 'categories/index'

  resources :registrations
  resources :books

  get 'employees/new'

  get 'employees/create'
  post 'employees/create'

  get 'employees/edit'

  get 'employees/index'

  get 'employees/:id' , to: "employees#show", as: "mobin"
  get 'employees/:id/edit', to: "employees#edit", as: "edit"
  patch 'employees/:id/update', to: "employees#update", as: "update"
  delete 'employees/:id/delete', to: "employees#delete", as: "delete"

  get 'mathematics/evenodd'
  post 'mathematics/evenodd'

  get 'mathematics/prime'
  post "mathematics/prime"

  get 'mathematics/palidrom'

  get 'calculaions/evenodd'
  post 'calculaions/evenodd'

  get 'calculaions/addition'
  post 'calculaions/addition'

  get 'attendence/new'

  get 'attendence/show'

  get 'attendence/edit'

  get 'attendence/delete'

  get 'attendence/update'

  get "students/show"
  post 'students/show'
  get "students/create"
  get "employees/new"

  get 'teachers/new'
  get 'classes/new'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'employees#index'

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
