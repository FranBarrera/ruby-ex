require 'sinatra'
require 'redis'
 
redis = Redis.new(:host => ENV["REDIS_SERVICE_HOST"] || "127.0.0.1" , :port => ENV["REDIS_SERVICE_PORT"] || 6379)

get '/' do
  redis.ping
  "Hello World!"
end
