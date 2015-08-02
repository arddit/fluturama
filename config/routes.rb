Rails.application.routes.draw do

get 'sessions/new'

root                 'application#index'
get    'results' => 'application#results'
get    'about'   => 'application#about'
get    'contact' => 'application#contact'
get    'help'    => 'application#help'
get    'signup'  => 'users#new'
get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'

resources :users

end
