class NewslettersController < ApplicationController

	def new
		@newsletter = Newsletter.new
	end

	def show
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
    	redirect_to root_path
    	flash[:success] = "You have been successfully subscribed to our newsletter."
      # Handle a successful save.
		else
      render 'new'
    end
	end

	private 

		def newsletter_params
			params.require(:newsletter).permit(:email)
		end

end