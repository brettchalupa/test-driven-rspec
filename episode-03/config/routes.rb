Rails.application.routes.draw do
  get('status' => 'status#index')
  get('consoles' => 'consoles#index')
end
