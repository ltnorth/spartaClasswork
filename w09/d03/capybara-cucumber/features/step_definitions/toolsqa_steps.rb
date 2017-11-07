Given(/^I can access the toolsqa practice automation form$/) do
	visit('automation-practice-form')
end

When(/^I fill in form fields with expected data types$/) do
	fill_in 'firstname', with: 'Liam'
	fill_in 'lastname', with: 'North'
	choose 'sex-0'
	choose 'exp-0'
	fill_in 'datepicker', with: Date.today
	find('#profession-1').click
	find('#tool-2').click
	select 'Europe', from: 'continents'
	select 'Wait Commands', from: 'selenium_commands'
end

# This does not pass as is
Then(/^they appear on the page correctly$/) do
	expect(find(:xpath, '//*[@id="content"]/div[1]/div/div/div/div[2]/div/form/fieldset/div[8]/input').value).to eql('Liam')
	expect(find(:xpath, '//*[@id="content"]/div[1]/div/div/div/div[2]/div/form/fieldset/div[11]/input').value).to eql('North')
	expect(find('#sex-0').checked?).to be true
	expect(find('#exp-0').checked?).to be true
	expect(find('#datepicker').value).to eql(Date.today)
	expect(find('#profession-1').checked?).to be true
	expect(find('#continents').value).to eql('Europe')
	expect(find('#selenium_commands').value).to eql('Wait Commands')
end

# And is a method for chaining more givens
# And() do
	
# end

# But is another method available
# But() do
	
# end