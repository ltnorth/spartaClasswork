require 'selenium-webdriver'
require 'date'

class SeleniumQatoolsForm
  def initialize
    Selenium::WebDriver::Chrome.driver_path = '/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'
    @driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
  end

  def access_practice_form
    @driver.get @practice_form_url
  end

  def add_name_to_firstname_field
    @driver.find_element(:name, 'firstname').send_keys('Liam')
  end

  def add_name_to_lastname_field
    @driver.find_element(:name, 'lastname').send_keys('North')
  end

  def select_sex
    num = rand(1)
    @driver.find_element(:id, "sex-#{num}").click
  end

  def input_date
    @driver.find_element(:id, 'datepicker').send_keys(Date.today)
  end

  def select_profession
    num = rand(1)
    @driver.find_element(:id, "profession-#{num}").click
  end

  def select_continent
    num = rand(7)
    @driver.find_elements(:tag_name, "option")[num].click
  end

  def get_first_name_text
    @driver.find_element(:name, 'firstname').attribute("value")
  end
end

practice_form_page = SeleniumQatoolsForm.new

practice_form_page.access_practice_form
practice_form_page.add_name_to_firstname_field
practice_form_page.add_name_to_lastname_field
practice_form_page.select_sex
practice_form_page.input_date
practice_form_page.select_continent
p practice_form_page.get_first_name_text

sleep 3