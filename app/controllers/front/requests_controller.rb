class Front::RequestsController < FrontController

	def new
		@request = Request.new
	end

	def create
		@request = Request.new(request_params)

		if @request.save
			respond_to do |format|
				format.js
			end
		end
	end

	private

	def request_params
		params.require(:request).permit(:name, :phone, :email, :comment, :request_type)
	end
end
