Rails.application.routes.draw do
  resources :estac_serv_adics
  get 'sesion/Nuevo'
  resources :autenticacions
  get 'vistas/PrincipalDue'
  get 'vistas/PrincipalCli'
  get 'vistas/PrincipalAdmin'
  get 'vistas/ListarEstac'
  get 'home/Contactenos'
  get 'home/Index'
  get 'home/Nosotros'
  resources :publicidads
  resources :alquilers
  resources :comentarios
  resources :usuarios
  resources :serv_adicionales
  resources :estacionamientos
  get    'signup'  => 'users#new'
  post   'sesion/create'
  delete 'sesion/destroy'
  get    'comentario/RegComentario'
  get 'alquiler/HistoricoEstac'
  get 'alquiler/RegAlquiler'
  root 'home#Index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
