Uistiti::Engine.routes.draw do
  put '/lookbook/dummy/success', to: 'lookbook/dummy#success'
  get '/lookbook/dummy/success', to: 'lookbook/dummy#success'
  put '/lookbook/dummy/error', to: 'lookbook/dummy#error'
  get '/lookbook/dummy/error', to: 'lookbook/dummy#error'
  mount Lookbook::Engine, at: "/lookbook"
  #dummy routes for lookbook AJAX behavior testing
end
