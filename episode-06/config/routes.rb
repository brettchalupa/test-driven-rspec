Rails.application.routes.draw do
  get('home' => 'home#index')
  get('about' => 'about#index')
  get('status' => 'status#index')
  get('consoles' => 'consoles#index')
end
