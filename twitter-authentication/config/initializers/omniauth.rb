Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, ENV['API_KEY'], ENV['API_SECRET'], scope: "openid profile email"
end
OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true
