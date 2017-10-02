class StaticController < ApplicationController
	def home
	end

	def hello
		@name = params[:name]
		# This bit is if you put .json on the end then it will give the page in json
		# respond_to do |format|
  #     format.html do
  #           # load template as normal
  #     end
  #     format.json do
  #           # render as json instead
  #          render :json => { message: "hello, #{@name}!" }
  #     end
  #   end
	end

	def contact
	end
end