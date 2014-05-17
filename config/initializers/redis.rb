#uri = URI.parse('redis://pub-redis-10378.us-east-1-1.2.ec2.garantiadata.com:10378')
REDIS = Redis.new(:host => ENV['REDIS_URL'], :port => 10378, :password => 'equipoMunki2014')