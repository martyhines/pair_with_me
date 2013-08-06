Twitter.configure do |config|
  config.consumer_key       = ENV [CONSUMER_KEY]
  config.consumer_secret    = ENV [CONSUMER_SECRET]
  config.oauth_token        = ENV [OAUTH_TOKEN]
  config.oauth_token_secret = ENV [OAUTH_TOKEN_SECRET]
  #make sure to set environment variable on heroku
end

TWITTER_CLIENT = Twitter::Client.new
