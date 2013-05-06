require 'rubygems'
require 'bundler/setup'

require 'nytimes-article' # and any other gems you need

API_KEY                = ENV['NYTIMES_ARTICLE_SEARCH_API_KEY']
NytimesArticle.api_key = API_KEY

RSpec.configure do |config|
  # some (optional) config here
end
