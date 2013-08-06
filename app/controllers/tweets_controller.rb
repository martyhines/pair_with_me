class TweetsController < ApplicationController
  before_filter :set_technologies
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

  def set_technologies
    @technologies = {
      csharp:     "C#",
      ember:      "Ember",
      javascript: "JavaScript",
      lisp:       "Lisp",
      objectivec: "Objective-C",
      opensource: "Open Source",
      python:     "Python",
      ruby:       "Ruby",
    }
  end
end

