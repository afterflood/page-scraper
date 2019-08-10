class HomeController < ApplicationController

  def index

    require 'nokogiri'
    require 'open-uri'

    # Fetch and parse HTML document
    @doc = Nokogiri::HTML(open('https://www.facebook.com/pg/CMOKerala/posts/'))

  end
end
