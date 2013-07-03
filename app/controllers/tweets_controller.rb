class TweetsController < ApplicationController
  before_filter :regex
  require "rubygems"
  require "twitter"
  Twitter.configure do |config|
    config.consumer_key = 'SIA2IocBpvIjoe4AQ1wg'
    config.consumer_secret =  'UcablPTEeywWAxzKg5MP1VUFFoPppPaR1HBVQXCJ8g'
    config.oauth_token = '252830982-Sga3qjleThLPTEtJYD8hH1Vko046XABsUZ3X3RxM'
    config.oauth_token_secret = 'w5lPpTOovhhMJqzEQ1zQM44Ujo8FDrnfvEDCYTabk'
  end

  def index
    client = Twitter::Client.new
    @tweets = client.search('pairwithme', :count => 100).statuses
    @search = "all"
  end
  def api
    client = Twitter::Client.new
    @tweets = client.search(params[:q], :count => 100)

    render :layout => nil, :format => 'json'
  end
  def ember
    client = Twitter::Client.new
    @search = "Ember"
    @tweets = client.search('pairwithme+ember', :count => 100).statuses
  end
  def javascript
    client = Twitter::Client.new
    @search = "JavaScript"
    @tweets = client.search('pairwithme+javascript', :count => 100).statuses
  end
  def objectivec
    client = Twitter::Client.new
    @search = "Objective-C"
    @tweets = client.search('pairwithme+objective', :count => 100).statuses
  end
  def opensource
    client = Twitter::Client.new
    @search = "Open Source"
    @tweets = client.search('pairwithme+open%20source', :count => 100).statuses
  end
  def python
    client = Twitter::Client.new
    @search = "Python"
    @tweets = client.search('pairwithme+python', :count => 100).statuses
  end
  def ruby
    client = Twitter::Client.new
    @search = "Ruby"
    @tweets = client.search('pairwithme+ruby', :count => 100).statuses
  end
  def search
    client = Twitter::Client.new
    @tweets = client.search('pairwithme+'+ params[:search], :count => 100).statuses
    @search = params[:search]
  end

  def regex
    @regex = Regexp.new(/((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/)
  end
end

