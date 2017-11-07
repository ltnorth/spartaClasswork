require 'date'
require 'capybara/dsl'
# DSL = Domain Specific Language
# It includes all the Capybara methods into this Katalon class
class Katalon
  include Capybara::DSL

  def initialize
    @session = Capybara::Session.new(:selenium)
    @session.visit 'http://demoaut.katalon.com/'
  end

  def click_make_appointment
    @session.find("#btn-make-appointment").click
  end

  def current_url
    @session.current_url
  end

  def set_username_field
    @session.fill_in 'txt-username', with:'John Doe'
  end

  def get_username_field_value
    @session.find('#txt-username').value
  end

  def set_password_field
    @session.fill_in 'txt-password', with:'ThisIsNotAPassword'
  end

  def get_password_field_value
    @session.find('#txt-password').value
  end

  def submit_login_form
    @session.click_button 'btn-login'  
  end

  def choose_facility
    @session.select 'Hongkong CURA Healthcare Center', from: 'combo_facility'
  end

  def check_facility
    @session.find('#combo_facility').value
  end

  def apply_for_readmission
    @session.find('#chk_hospotal_readmission').click
  end

  def check_readmission
    @session.find('#chk_hospotal_readmission').checked?
  end

  def choose_healthcare_program
    @session.choose 'radio_program_medicaid'
  end
  
  def check_healthcare_program
    @session.find('#radio_program_medicaid').checked?
  end

  def set_date_field
    @session.fill_in 'txt_visit_date', with: Date.today
  end

  def get_date_field_value
    @session.find('#txt_visit_date').value
  end

  def set_comment
    @session.fill_in 'txt_comment', with: 'I have a rash on my ass'
  end

  def get_comment
    @session.find('#txt_comment').value
  end

  def book_appointment
    @session.click_button 'btn-book-appointment'
  end

  def go_to_homepage
    @session.find(:xpath, '//*[@id="summary"]/div/div/div[7]/p/a').click
  end

  def click_dat_burger
    @session.find('#menu-toggle').click
  end

  def go_to_history
    @session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[3]/a').click
  end

  def go_to_profile
    @session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[4]/a').click
  end

  def logout
    @session.find(:xpath, '//*[@id="sidebar-wrapper"]/ul/li[5]/a').click
  end
end














