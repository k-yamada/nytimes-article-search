require 'rubygems'
require 'open-uri'
require 'json'
require 'date'
require "nytimes-article/version"

module NytimesArticle
  class << self
    API_SERVER  = 'api.nytimes.com'
    API_VERSION = 'v1'
    API_NAME    = 'search'
    API_BASE    = "/svc/#{API_NAME}/#{API_VERSION}/article"

    @@api_key          = nil
    @@debug            = false
    @@copyright        = nil
    @@semantic_api_key = nil

    ##
    # Set the API key used for operations. This needs to be called before any requests against the API. To obtain an API key, go to http://developer.nytimes.com/
    def api_key=(key)
      @@api_key = key
    end

    def api_key
      @@api_key
    end

    def semantic_api_key=(key)
      @@semantic_api_key = key
    end

    def api_key
      @@semantic_api_key
    end

    def datetime_parser(datetime)
      datetime ? DateTime.parse(datetime) : nil
    end

    ##
    # Builds a request URI to call the API server
    def build_request_url(params)
      URI::HTTP.build :host => API_SERVER, :path => API_BASE, :query => params.map {|k,v| "#{k}=#{v}"}.join('&')
    end

    def search(params={})
      begin
        if @@api_key.nil?
          raise "You must initialize the API key before you run any API queries"
        end
        full_params  = params.merge 'api-key' => @@api_key, 'format' => 'json'
        uri          = build_request_url(full_params)
        reply        = uri.read
        parsed_reply = JSON.parse reply
        if parsed_reply.nil?
          raise "Empty reply returned from API"
        end
        parsed_reply
      rescue OpenURI::HTTPError => e
        if e.message =~ /^404/
          return nil
        end
        raise "Error connecting to URL #{uri} #{e}"
      end
    end
  end
end
