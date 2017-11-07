class BBCSite
  
  def bbc_homepage
    Pages::BBCHomepage.new
  end

  def bbc_sign_in_page
    Pages::BBCSignInPage.new
  end
  
end