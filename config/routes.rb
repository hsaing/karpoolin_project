Carpool1::Application.routes.draw do

resources :parents, :students, :sessions

resources :activities do 
  resources :carpoolers
end
root 'landings#index'

get "show_student" => 'students#show_student', :as => :show_student

  # Added this 
get "landings/new"

  # get "carpoolers/index"
  # get "carpoolers/show"
  # get "carpoolers/edit"
  # get "carpoolers/update"
  # get "carpoolers/new"
  # get "carpoolers/create"
  # get "carpoolers/destroy"
  # get "activities/index"
  # get "activities/show"
  # get "activities/edit"
  # get "activities/update"
  # get "activities/new"
  # get "activities/create"
  # get "activities/destroy"
  # get "students/index"
  # get "students/show"
  # get "students/edit"
  # get "students/update"
  # get "students/new"
  # get "students/create"
  # get "students/destroy"
  # get "parents/index"
  # get "parents/show"
  # get "parents/edit"
  # get "parents/update"
  # get "parents/new"
  # get "parents/create"
  # get "parents/destroy"
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
