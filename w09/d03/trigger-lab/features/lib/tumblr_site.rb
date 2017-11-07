require 'require_all'
require_rel 'pages'

class TumblrSite

  def tumblr_homepage
    TumblrHomepage.new
  end

  def tumblr_login
    TumblrLogin.new
  end

  def tumblr_dashboard
    TumblrDashboard.new
  end

  def tumblr_new_photo
    TumblrNewPhoto.new
  end
end