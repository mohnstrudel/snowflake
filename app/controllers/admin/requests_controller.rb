class Admin::RequestsController < AdminController
	
  before_action :find_request, only: [:show, :destroy]

  def index
		@requests = Request.order('created_at DESC')
	end

	def show
		@request = Request.find(params[:id])
	end

  def destroy
    if @request.destroy
      redirect_to admin_requests_path, method: :get
      flash[:success] = "Успешно удалено"
    else
      render :index
    end
  end

  private 

  def find_request
    @request = Request.find(params[:id])
  end
end
