class Admin::RequestsController < AdminController
	def index
		@requests = Request.order('created_at DESC')
	end

	def show
		@request = Request.find(params[:id])
	end
end
