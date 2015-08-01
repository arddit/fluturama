Rails.application.routes.draw do

root 'application#index'
get 'results' => 'application#results'
get 'about'   => 'application#about'
get 'contact' => 'application#contact'
get 'help'    => 'application#help'
get 'signup'  => 'users#new'
resources :users

end
