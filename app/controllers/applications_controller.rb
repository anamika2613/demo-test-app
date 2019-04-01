class ApplicationsController < ApplicationController
	def index 
		@apps = Application.all
	end
	def new
	end

	def create
		binding.pry
	  @app = Application.new(app_params)
	 
	  @app.save
	  redirect_to applications_path
	end
	 
	private
	  def app_params
	    params.require(:application).permit(:name)
	  end
end
