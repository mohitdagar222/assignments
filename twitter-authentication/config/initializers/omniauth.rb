Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, ENV['API_KEY'], ENV['API_SECRET']
end
OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true
