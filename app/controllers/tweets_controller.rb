class TweetsController < ApplicationController
  before_filter :regex, :set_technologies 
  require "rubygems"
  require "twitter"

  def index
    @tweets = TWITTER_CLIENT.search("pairwithme", :count => 100).statuses
    @search = "all"
  end

  def show
    @search = params[:search]
    @tweets = TWITTER_CLIENT.search("pairwithme+#{URI.escape(@search)}", :count => 100).statuses
  end

  private
  def regex
    @regex = Regexp.new(/((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/)
  end

  def set_technologies
    @technologies = {
      csharp:     "C#",
      ember:      "Ember",
      javascript: "JavaScript",
      lisp:       "Lisp",
      objectivec: "Objective-C",
      opensource: "Open Source",
      ruby:       "Ruby",
    }
  end
end

