class Admin::Settings::CategoriesController < AdminController
	
	before_action :find_category, only: [:edit, :update, :destroy]

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to edit_admin_settings_category_path(@category), method: :get
			flash[:success] = "Успешно создано"
		else
			render 'new'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def edit
	end

	def update
		if @category.update(category_params)
			redirect_to edit_admin_settings_category_path(@category), method: :get
			flash[:success] = "Успешно обновлено"
		else
			render 'edit'
			flash[:alert] = "Что-то пошло не так"
		end
	end

	def destroy
		if @category.destroy
			redirect_to admin_settings_path, method: :get
			flash[:success] = "Удалено успешно"
		else
			render 'index'
			flash[:alert] = "Что-то пошло не так"
		end
	end


	private

	def category_params
		params.require(:category).permit(:name, :picture, :description)
	end

	def find_category
		@category = Category.find(params[:id])
	end
end

