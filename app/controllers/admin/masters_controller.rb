class Admin::MastersController < AdminController
	before_action :find_master, only: [:edit, :update]

	def index
		@masters = Master.all
	end

	def new
		@master = Master.new
	end

	def create
		@master = Master.new(master_params)

		if @master.save
  			redirect_to admin_masters_path, method: :get
      		flash[:success] = "Успешно создано"
  		else
  			render 'new'
  		end
	end

	def edit
	end

	def update
		if @master.update(master_params)
			redirect_to edit_admin_master_path(@master), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render "edit"
		end
	end


	private

	def find_master
		@master = Master.find(params[:id])
	end

	def master_params
		params.require(:master).permit(:name, :description, :picture, :remove_picture, :category_id)
	end
end
