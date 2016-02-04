OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "221580528187597", "383f684c38873812912d313c28f931b9"
end