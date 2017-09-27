class BooksApiController < Sinatra::Base
	configure :development do
      register Sinatra::Reloader
  end

  $books = [
  	{
  		id: 0,
  		title: "The Cat In The Hat",
  		author: "Dr Suess"
  	},
  	{
  		id: 1,
  		title: "Green Eggs and Ham",
  		author: "Dr Suess"
  	},
  	{
  		id: 2,
  		title: "The Wordsmith",
  		author: "Ollie Holden"
  	}
  ]
  
	# INDEX - gets all the books
	get "/api/books" do
		json $books
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