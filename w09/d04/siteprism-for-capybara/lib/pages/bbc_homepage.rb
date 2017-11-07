class Pages::BBCHomepage < SitePrism::Page
  
  set_url "http://bbc.co.uk/"
  set_url_matcher /bbc.co.uk/

  element :sign_in_link, "a[id='idcta-link']"

  def click_sign_in_link
    sign_in_link.click
  end

  def get_sign_in_link_text
    sign_in_link.text
  end
end