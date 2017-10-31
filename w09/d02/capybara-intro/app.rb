require 'capybara'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

session = Capybara::Session.new(:selenium)

session.visit 'http://toolsqa.com/automation-practice-form/'

# fill in form inputs using name or id
session.fill_in 'firstname', with: 'Ollie'
session.fill_in 'lastname', with: 'Holden'
session.fill_in 'datepicker', with: '01/01/2018'

# radio button selection using id
session.choose 'sex-0'
session.choose 'exp-6'

# use find for specifying css or xpath searches - like jQuery. nb do not need to put css
# session.find(:css, '#profession-0').click
session.find('#profession-0').click
session.find('#tool-2').click

# select from dropdowns using ids and names
session.select 'Europe', from: 'continents'
session.select 'Wait Commands', from: 'selenium_commands'

# click button option - needs html button tag and id
session.click_button 'submit'

# extra finders
session.find_button('Button')
session.find_link('Partial Link Test')
session.find(:xpath, '//*[@id="content"]/form/fieldset/div[8]/a').hover






sleep 5




