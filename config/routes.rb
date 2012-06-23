KonisieDev1::Application.routes.draw do

  
  mount TinymceFm::Engine => "/tinymce_fm"
  
  
  get "stacja" => "front_station#index", :as => :station_index
  get "stacja-oferta" => "front_station#offer", :as => :station_offer
  get "stacja-galeria" => "front_station#gallery", :as => :station_gallery
  get "stacja-cennik" => "front_station#prices", :as => :station_prices


  get "stajnia" => "front_stable#index", :as => :stable_index
  get "stajnia-aktualnosci" => "front_stable#infos", :as => :stable_infos
  get "stajnia-oferta" => "front_stable#offer", :as => :stable_offer
  get "stajnia-galeria" => "front_stable#gallery", :as => :stable_gallery
  get "stajnia-cennik" => "front_stable#prices", :as => :stable_prices
  get "stajnia-archiwum" => "front_stable#archives", :as => :stable_archives


  get "pensjonat" => "front_pension#index", :as => :pension_index
  get "pensjonat-pokoje" => "front_pension#rooms", :as => :pension_rooms
  get "pensjonat-galeria" => "front_pension#gallery", :as => :pension_gallery
  get "pensjonat-cennik" => "front_pension#prices", :as => :pension_prices
  get "pensjonat-atrakcje-turystyczne" => "front_pension#attractions", :as => :pension_attractions


  get "kontakt" => "home#contact", :as => :contact


  get "home/index"
  

  resources :infos
  resources :pages
  resources :galleries

  match "admin" => "admin#index", :as => :admin
  match "admin/login" => "admin#login", :as => :admin_login
  match "admin/enter" => "admin#enter", :as => :admin_enter
  match "admin/logout" => "admin#logout", :as => :admin_logout




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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
