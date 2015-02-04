Rails.application.routes.draw do
  resources :modes

  resources :subscribers

  resources :wishlists

  resources :vips

  resources :user_profiles

  resources :newsfeeds

  devise_for :admins
  devise_for :users#, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  mount Like::Engine => '/'
  mount Ckeditor::Engine => '/ckeditor'

  resources :periods
  resources :chapters
  resources :courses
  resources :catalogs

  get '/all' , :to => 'app#all' , :as => :all_courses
  get '/history' , :to => 'app#history', :as => :all_history
  get '/to_be_vip' , :to => 'app#vip' , :as => :to_be_vip
  get '/subscriber/:course_id' , :to => 'app#subscriber' , :as => 'subscribe_course'
  get '/cancel_subscriber/:course_id' , :to => 'app#cancel_subscriber' , :as => 'cancel_subscribe_course'
  get '/my_course' , :to => 'subscribers#my_course' , :as => 'my_course'

  #members
  get '/members' , :to => 'members#index' , :as => 'members'
  get '/members/new' , :to => 'members#new' , :as => 'members_new'
  get '/:user_id/member' , :to => 'members#show' , :as => 'show_member'
  get '/:user_id/member/edit' , :to => 'members#edit' , :as => 'edit_member'
  post '/:user_id/member/edit' , :to => 'members#edit' , :as => 'post_member'

  get '/users' , :to => 'app#to_excel' , :as => 'users'
  get '/sso_warning' , :to => 'app#sso_warning' , :as => 'sso_warning'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'app#index'



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
