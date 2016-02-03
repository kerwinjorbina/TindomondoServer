Rails.application.routes.draw do
  match '*all' => 'application#cors_preflight', via: :options
  scope '/api' do
    #routes go here
    resources :events
    resources :users
    resources :registrations
  end
end
