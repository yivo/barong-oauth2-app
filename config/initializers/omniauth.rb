Rails.application.config.middleware.use OmniAuth::Builder do
  provider :barong,
           ENV.fetch("BARONG_CLIENT_ID"),
           ENV.fetch("BARONG_CLIENT_SECRET"),
           domain: ENV.fetch("BARONG_DOMAIN")
end

OmniAuth.config.logger = Rails.logger
