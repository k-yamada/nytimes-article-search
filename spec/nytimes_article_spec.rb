require 'spec_helper'
require 'tempfile'
require 'pp'

describe NytimesArticle do

  describe ".search" do
    context "search by no query" do
      before(:each) do
        @articles = NytimesArticle.search
      end

      it "should return 0 articles" do
        @articles["total"].should  == 0
      end
    end

    context "search by query" do
      before(:each) do
        @articles = NytimesArticle.search(
          :query      => 'obama',
          :begin_date => '20130401',
          :end_date   => '20130402'
        )
      end

      it "should return articles" do
        @articles["total"].should  == 26
        article = @articles['results'][0]
        article['date']  = '20130402'
        article['title'] = "U.S. Sees North Korea Blustering, Not Acting"
      end
    end
  end

end
