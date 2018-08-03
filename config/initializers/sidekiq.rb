host = "localhost"
port = "6379"

Sidekiq.configure_client do |config|
  config.redis = {host: host, port: port}
end

Sidekiq.configure_server do |config|
  config.redis = {host: host, port: port}
end
