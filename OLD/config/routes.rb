Rails.application.routes.draw do
  match '*all' => 'application#cors_preflight', via: :options
  scope '/api' do
    #routes go here
    resources :events
    resources :users
    resources :registrations
    resources :sports

  end
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
