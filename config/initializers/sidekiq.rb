#Sidekiq.configure_server do |config|
#  config.redis = {:url => ENV['REDIS_URL']}
#  ActiveRecord::Base.connection.disconnect!
#  ActiveRecord::Base.configurations[Rails.env]['timeout'] = 300000
#  ActiveRecord::Base.establish_connection
#end

#Sidekiq.configure_client do |config|
#  config.redis = {:url => ENV['REDIS_URL']}
#end
