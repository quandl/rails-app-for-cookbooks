host = '127.0.0.1'
port = 6379
db = 1
url = { url: "redis://#{host}:#{port}/#{db}" }

Sidekiq.configure_server do |config|
  config.super_fetch!
  config.redis = url
end

Sidekiq.configure_client do |config|
  config.redis = url
end
