class BooksController < Sinatra::Base

	configure :development do
      register Sinatra::Reloader
  end
  
	# INDEX - gets all the books
	get "/books" do
		"ALL THE BOOKS"
	end

	# NEW - gets a form to create
	get "/books/new" do
		"HERE IS A FORM TO CREATE A NEW BOOK"
	end

	# SHOW - gets one book
	get "/books/:id" do
		id = params[:id]
		"#{id}"
	end

	# CREATE - sends a form to create
	post "/books" do
		"YOU HAVE CREATED A NEW BOOK"
	end

	# EDIT - gets a form to edit
	get "/books/:id/edit" do
		id = params[:id]
		"HERE IS A FORM TO EDIT #{id}"
	end

	# UPDATE - sends a form to update
	put "/books/:id" do
		id = params[:id]
		"YOU HAVE UPDATED #{id}"
	end

	# DELETE - deletes one resource
	delete "/books/:id" do
		id = params[:id]
		"YOU HAVE DELETED #{id}"
	end
end