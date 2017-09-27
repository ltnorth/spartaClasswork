require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require_relative './controllers/movies_controller.rb'
require_relative './controllers/movies_api_controller.rb'

use MoviesApiController
run MoviesController