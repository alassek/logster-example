Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Logster::Web, at: '/logs'
  root to: 'test#testing'
end
