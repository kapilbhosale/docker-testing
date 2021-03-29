Rails.application.routes.draw do
  root :to => "homes#info"
  resources :homes
end
