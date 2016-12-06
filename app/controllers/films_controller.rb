require "csv"
class FilmsController < ApplicationController
	def index
		@films = CSV.read('Film.csv')
		@film = @films[rand(1..@films.count)]

		respond_to do |format|
	  	data = { :title => @film[1], :year=>@film[2]}
	  	format.json  { render :json => data }
	  	format.html  { render 'index'}
	  	format.xml { render :xml => data }
	  end

	end
end
