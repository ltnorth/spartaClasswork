Before('@image_upload') do
	LoginHelper.login 
end

After do 
	LoginHelper.logout
end