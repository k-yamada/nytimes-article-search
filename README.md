# NytimesArticle

A thin Ruby client for The New York Times Article Search API

## Installation

Add this line to your application's Gemfile:

    gem 'nytimes-article-search'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nytimes-article-search

## Usage

```
require 'nytimes-article-search'
require 'pp'

API_KEY                = 'your NYTimes API_KEY'
NytimesArticle.api_key = API_KEY
articles = NytimesArticle.search(
  :query      => 'obama',
  :begin_date => '20130401',
  :end_date   => '20130402'
)
pp articles
# =>
# {"offset"=>"0",
#  "results"=>
#   [{"body"=>
#      "WASHINGTON &#x2014; Despite a drumbeat of increasingly bellicose threats from North Korea , the White House said Monday that there was no evidence that the country&#x2019;s leader, Kim Jong-un , was mobilizing troops or other military forces for any imminent attack.&#xa; &#xa;Though American officials said they remained concerned about the",
#     "byline"=>
#      "By MARK LANDLER and CHOE SANG-HUN; Mark Landler reported from Washington, and Choe Sang-hun from Seoul, South Korea. Thom Shanker contributed reporting from Washington.",
#     "date"=>"20130402",
#     "title"=>"U.S. Sees North Korea Blustering, Not Acting",
#     "url"=>
#      "http://www.nytimes.com/2013/04/02/world/asia/south-korea-gives-military-leeway-to-answer-north.html"},
#    {"body"=>
#      "President Obama on Tuesday will announce a broad new research initiative, starting with $100 million in 2014, to invent and refine new technologies to understand the human brain, senior administration officials said Monday.&#xa; &#xa;A senior administration scientist compared the new initiative to the Human Genome Project, in that it is directed at",
#     "byline"=>"By JOHN MARKOFF and JAMES GORMAN",
#     "date"=>"20130402",
#     "title"=>"Obama to Unveil Initiative To Map the Human Brain",
#     "url"=>
#      "http://www.nytimes.com/2013/04/02/science/obama-to-unveil-initiative-to-map-the-human-brain.html"},
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
