class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  skip_before_filter :verify_authenticity_token
  before_filter :cors_preflight

  def cors_preflight
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET,POST,PUT,PATCH,DELETE,OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin,Accept,Content-Type'
    headers['Access-Control-Max-Age'] = '3628800'
    head :ok, content_type: 'text/html' if request.request_method == 'OPTIONS'
  end
end
