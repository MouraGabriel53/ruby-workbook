Rails.application.routes.draw do
  # Ao fazer uma requisição GET em '/' (padrão), manda para o controller 'home' e procura a action 'index'
  # get '/', controller: 'home', action: 'index'
  # Usar sempre que possível '' e não ""
  root "home#index"

  resources :vehicles
  # resources :vehicles, only: %i[ index new create show edit update destroy ] # -> %i entende que o que segue é um array de symbols
  # resouces :vehicles, only: [ :index ]

  # resouces :vehicles -> Mesma coisa de baixo
  # resources :vehicles, only: [ :index, :new, :create, :show, :edit, :update, :destroy  ]

  # get '/vehicles/new', controller: 'vehicles', action: 'new' -> Exibe o formulário para criar (CREATE)           C
  # post '/vehicles', controller: 'vehicles', action: 'create' (CREATE)

  # get '/vehicles', controller: 'vehicles', action: 'index' -> Bem-vindo ou listar todos (READ)                   R
  # get '/vehicles/:id', controller: 'vehicles', action: 'show' -> lista um único elemento (READ)

  # get '/vehicles/:id/edit', controller: 'vehicles', action: 'edit' -> Exibe o formulário para editar (UPDATE)    U
  # put '/vehicles/:id', controller: 'vehicles', action: 'update' (UPDATE)
  # patch '/vehicles/:id', controller: 'vehicles', action: 'update' (UPDATE)

  # delete '/vehicles/:id', controller: 'vehicles', action: 'destroy' (DELETE)                                     D
end
