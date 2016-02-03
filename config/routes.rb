Rails.application.routes.draw do
  match '*all' => 'application#cors_preflight', via: :options
end
