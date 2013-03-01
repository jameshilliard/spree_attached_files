Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :attached_files
  end
end
