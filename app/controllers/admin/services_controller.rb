class Admin::ServicesController < AdminController
	before_action :find_service, only: [:edit, :update, :destroy]

	# our custom controller action
	def get_subcategories
  		@subcategories = Subcategory.where(category_id: params[:category_id])
	end

	def index
		@services = Service.all
	end

	def new
		@service = Service.new
	end

	def edit
	end

	def create
		@service = Service.new(service_params)

		if @service.save
			redirect_to edit_admin_service_path(@service), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @@service.destroy
			
			redirect_to admin_services_path
			flash[:alert] = 'Удалено успешно'
		else
			render 'index'
		end
	end

	def update
		if @service.update(service_params)
			# debug
			if params[:pictures]
				params[:pictures].each { |image| @service.pictures.create(image: image) }
			end
			redirect_to edit_admin_service_path(@service)
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
		end

	end


	private

	def service_params
		params.require(:service).permit(:title, :category_id, :subcategory_id, :description, :price, 
			pictures_attributes: [ :id, :image, :service_id, :_destroy ])
	end

	def find_service
		@service = Service.find(params[:id])
	end
end