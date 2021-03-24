redis_url = ENV.fetch("REDIS_URL_CACHING", "redis://redis:6379/0")
# config.cache_store = :redis_cache_store, { url: redis_url}
REDIS_CACHE = Redis.new({ url: redis_url})

begin
  REDIS_CACHE.get("key")
rescue Redis::CannotConnectError => ex
  puts "*****************************************"
  puts ex
  puts "*****************************************"
  REDIS_CACHE = nil
end