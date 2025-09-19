Rails.application.routes.draw do
  #Ao fazer uma requisição GET em '/' (padrão), manda para o controller 'home' e procura a action 'index'
  # get '/', controller: 'home', action: 'index'
  root 'home#index' 
end
