Rails.application.routes.draw do
  match '*all' => 'application#cors_preflight', via: :options
  scope '/api' do
    #routes go here
  end
end
