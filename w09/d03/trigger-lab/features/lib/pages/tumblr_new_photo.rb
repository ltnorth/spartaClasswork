require 'capybara/dsl'

class TumblrNewPhoto

  include Capybara::DSL

  ADDPHOTOBOX = '//*[@id="new_post_buttons"]/div[4]/div[2]/div/div[2]/div/div[1]/div[2]/div/div/div[2]/div[1]/div/div'
  PASTEURLSECTION = '//*[@id="dashboard_index"]/div[10]/div/div/div/div/div[2]/div[2]/div/div[2]/div/div[1]/div[2]/div/div/div[2]/div[2]/div/div/div/div/div/div/div[1]/span'
  POSTPHOTOBUTTON = '//*[@id="new_post_buttons"]/div[4]/div[2]/div/div[5]/div[1]/div/div[3]/div/div/button'

  def click_add_photo
    find(:xpath, ADDPHOTOBOX).click
  end

  def enter_photo_url
    # fill_in find(:xpath, PASTEURLSECTION).text, with: 'http://gianthamster.com/wp-content/uploads/2013/12/2013_12_21_03_sGariScarf.jpg'
    execute_script("document.getElementsByClassName('editor-plaintext')[0].children[0].innerHTML = 'http://gianthamster.com/wp-content/uploads/2013/12/2013_12_21_03_sGariScarf.jpg';")
  end

  def add_photo
    click_button POSTPHOTOBUTTON
  end

end