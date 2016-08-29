class CatalogController < ApplicationController

 def get_catalog
  include HTTParty
  @result = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
  end
end
