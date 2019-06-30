Rails.application.routes.draw do
  resources :todos do
    resources :items 
  end  

  controller 'todos' do
    match '*unmatched_route', :to => 'todos#route_options', via: [:options]
  end
end
