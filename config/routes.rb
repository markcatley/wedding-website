WeddingWebsite::Application.routes.draw do
  root "welcome#index"
  get 'wedding_events'        => 'welcome#wedding_events'
  get 'getting_to_the_island' => 'welcome#getting_to_the_island'
  get 'getting_around'        => 'welcome#getting_around'
  get 'where_to_stay'         => 'welcome#where_to_stay'
  get 'gift_register'         => 'welcome#gift_register'
  get 'things_to_see_and_do'  => 'welcome#things_to_see_and_do'

  get 'contact_us'  => 'messages#new'
  post 'contact_us' => 'messages#create'

  resources :rsvps
  resources :request_for_transports

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
