require 'httparty'
require 'json'
# include HTTParty

# response = HTTParty.get('https://api.punkapi.com/v2/beers')

# puts response.headers.inspect
# puts response.body
# puts response.code
# puts response.message

class PunkApiCall
  include HTTParty
  base_uri 'https://api.punkapi.com/v2'

  def all_beers
    self.class.get('/beers')
  end

  def get_beer beer_id
    JSON.parse(self.class.get("/beers/#{beer_id}").body)
  end

  def get_random_beer
    JSON.parse(self.class.get('/beers/random').body)
  end

  def get_pages_of_beers(pages, per_page)
    self.class.get("/beers?page=#{pages}&per_page=#{per_page}").parsed_response
  end

  def all_of_type(category)
    all_beers.parsed_response.map { |beer| beer[category] }
  end

  def all_of_nested_type(category, sub_category)
    all_beers.parsed_response.map { |beer| beer[category][sub_category]  }
  end

end