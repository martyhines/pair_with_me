Twitter.configure do |config|
  config.consumer_key       = 'SIA2IocBpvIjoe4AQ1wg'
  config.consumer_secret    = 'UcablPTEeywWAxzKg5MP1VUFFoPppPaR1HBVQXCJ8g'
  config.oauth_token        = '252830982-Sga3qjleThLPTEtJYD8hH1Vko046XABsUZ3X3RxM'
  config.oauth_token_secret = 'w5lPpTOovhhMJqzEQ1zQM44Ujo8FDrnfvEDCYTabk'
  # config.oauth_token_secret = ENV['OAUTH_TOKEN_SECRET'] # make sure to set environment variable on heroku
end

TWITTER_CLIENT = Twitter::Client.new
