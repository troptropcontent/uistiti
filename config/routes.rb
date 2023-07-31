Uistiti::Engine.routes.draw do
  put '/lookbook/dummy/success', to: 'lookbook/dummy#put_success'
  get '/lookbook/dummy/success', to: 'lookbook/dummy#get_success'
  mount Lookbook::Engine, at: "/lookbook"
  #dummy routes for lookbook AJAX behavior testing
end
