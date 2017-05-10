if Rails.env.production?
  url = Env.fetch("REDIS_URL")
else
  url = "redis://127.0.0.1:6379"
end

Sidekiq.configure_server do |config|
  config.redis = { url: url }
end

Sidekiq.configure_client do |config|
  config.redis = { url: url }
end
