class Admin::Settings::SubcategoriesController < AdminController
  before_action :find_subcategory, only: [:edit, :update, :destroy]

	def index
		@subcategories = Subcategory.all
	end

	def new
		@subcategory = Subcategory.new
	end

	def create
		@subcategory = Subcategory.new(subcategory_params)
		if @subcategory.save
			redirect_to edit_admin_settings_subcategory_path(@subcategory), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @subcategory.update(subcategory_params)
			redirect_to edit_admin_settings_subcategory_path(@subcategory), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @subcategory.destroy
			redirect_to admin_settings_subcategories_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def subcategory_params
		params.require(:subcategory).permit(:name, :description, :category_id, :picture, :show_on_landing)
	end

	def find_subcategory
		@subcategory = Subcategory.find(params[:id])
	end
end

