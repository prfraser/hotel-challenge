Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/rooms' => 'welcome#rooms'
  get '/contact' => 'welcome#contact'
  match '/contact' => 'welcome#enquiry', via: :post
  get '/about' => 'welcome#about'
  get '/admin' => 'welcome#admin'
end
