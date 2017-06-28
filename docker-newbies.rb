require 'sinatra'
require 'redis'

get '/' do
  haml :index
end

get '/redis-status' do
  redis = Redis.new host: 'pedro-redis', port: 6379
  redis.ping
end

