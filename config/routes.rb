Uistiti::Engine.routes.draw do
  namespace 'lookbook' do
    resources :dummy, only: :update
  end
  mount Lookbook::Engine, at: "/lookbook"
  #dummy routes for lookbook AJAX behavior testing
end
