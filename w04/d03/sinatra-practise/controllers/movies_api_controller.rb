class MoviesApiController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end
	
	$movies = [
		{
			id: 0,
			title: "The Lord of the Rings",
			director: "Peter Jackson"
		},
		{
			id: 1,
			title: "Kill Bill",
			director: "Quentin Tarantino"
		},
		{
			id: 2,
			title: "Brokeback Mountain",
			director: "Ang Lee"
		},
		{
			id: 3,
			title: "Rocky",
			director: "John G. Avildsen"
		},
		{
			id: 4,
			title: "Jurassic Park",
			director: "Steven Spielberg"
		}
	]
	# INDEX
	get "/api/movies" do
		json $movies
	end

	# SHOW
	get "/api/movies/:id" do
		id = params[:id].to_i
		json $movies[id]
	end

	# CREATE
	post "/api/movies" do
		title = params[:title]
		director = params[:director]
		next_id = $movies.index($movies.last) + 1
		new_post = {
			id: next_id,
			title: title,
			director: director
		}
		$movies.push(new_post)
		json $movies
	end

	# UPDATE
	put "/api/movies/:id" do
		id = params[:id].to_i
		title = params[:title]
		director = params[:director]

		$movies[id][:title] = title
		$movies[id][:director] = director
		json $movies[id]
	end

	# DELETE
	delete "/api/movies/:id" do

		# given_id = params[:id].to_i
		# $movies.each do |movie|
		# 	if(movie[:id].to_i == given_id)
		# 		$movies.delete_at($movies.index(movie))
		# 	end
		# end

		# id = params[:id].to_i
		# if($movies[id] != nil)
		# 	index_of_movie_at_id = $movies.index($movies[id])
		# 	$movies.delete_at(index_of_movie_at_id)
		# 	json $movies
		# else
		# 	"Invalid movie id"
		# end

		# id = params[:id].to_i
		# $movies.delete_at(id)
		# json $movies

	end

end