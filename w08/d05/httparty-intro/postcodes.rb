require 'httparty'
require 'json'

class PostcodeApi
  include HTTParty
  base_uri 'https://api.postcodes.io'

  def single_postcode_search postcode
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def multiples_postcodes_search postcode_array
    JSON.parse(self.class.post("/postcodes", body: { "postcodes": postcode_array }).body)
  end
end

postcode = PostcodeApi.new
# puts postcode.single_postcode_search("HX38LG")
postcodes = ["HX38LG","HD33GP"]
puts postcode.multiples_postcodes_search(postcodes)