Rails.application.routes.draw do
  root(to: 'home#index')
  get('about' => 'about#index')
  resources(:consoles)

  namespace :api do
    get('status' => 'status#index')
    get('consoles' => 'consoles#index')
  end
end
