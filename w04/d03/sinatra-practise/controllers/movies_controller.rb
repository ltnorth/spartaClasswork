class MoviesController < Sinatra::Base
	
	configure :development do
		register Sinatra::Reloader
	end
	
	# INDEX
	get "/movies" do
		"HERE ARE ALL THE MOVIES"
	end

	# NEW
	get "/movies/new" do
		"HERE IS A FORM TO CREATE A NEW MOVIE"
	end

	# SHOW
	get "/movies/:id" do
		id = params[:id]
		"HERE IS MOVIE #{id}"
	end

	# CREATE
	post "/movies" do
		"YOU HAVE CREATED A NEW MOVIE"
	end
	
	# EDIT
	get "/movies/:id/edit" do
		id = params[:id]
		"HERE IS A FORM TO EDIT #{id}"
	end

	# UPDATE
	put "/movies/:id" do
		id = params[:id]
		"YOU HAVE UPDATED #{id}"
	end

	# DELETE
	delete "/movies/:id" do
		"YOU HAVE DELETED #{id}"
	end
end