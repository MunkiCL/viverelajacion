Sidekiq.configure_server do |config|
  config.redis = {:url => 'redis://redistogo:48f69b364c0e09e5eb91baca4846bf2b@grideye.redistogo.com:9726/'}
end
