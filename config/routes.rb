Spree::Core::Engine.routes.draw do
  namespace :admin do
  	resources :plugins
  end
end
